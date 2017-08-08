; Copyright 2017 Jacques Deschênes
; This file is part of metal_detector.
;
;     metal_detector is free software: you can redistribute it and/or modify
;     it under the terms of the GNU General Public License as published by
;     the Free Software Foundation, either version 3 of the License, or
;     (at your option) any later version.
;
;     metal_detector is distributed in the hope that it will be useful,
;     but WITHOUT ANY WARRANTY; without even the implied warranty of
;     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;     GNU General Public License for more details.
;
;     You should have received a copy of the GNU General Public License
;     along with metal_detector.  If not, see <http://www.gnu.org/licenses/>.
;
; NAME: metal_dectector
; AUTHOR: Jacques Deschênes
; DESCRIPTION: A simple metal detector designed around a PIC10F322 and a Common base
;              Colpitts oscillator running at 460 Khz for the loop dectector.    
;	       The MCU use an external crystal oscillator for stability. 
;	       The output of the Colpitts oscillator drive the T0CKI  input and
;              TIMER0 is used to count the number of cycles in a fixed interval
;              of 32 msec.  TIMER2 is used for 2 purposes. First is as a period
;	       timer for the audio tone generator, using PWM1, which frequency is fixed at 500 Hertz.
;	       Secondly the output scaler of TIMER2 is set to 16 thus that after 16 audio period
;	       an interrupt is triggered. Everything append inside the interrupt service
;	       routine. The value of TMR0 register is compared with the last run value.    
;              Each time this TMR0>last the slope variable is incremented. Each time
;              TMR0<last the slope variable is decremented. If the absolute value of
;              slope is >= TR_LVL constant the audio tone is activated. The tone is
;              disabled and variable slope reset to 0 each time TMR0==last.
;              This simple algorithm requiring only 66 instructions works quite
;              well. The dectection loop must be kept in movement because the alogorithm
;              check for change in frequency when the sweep is stopped over a detected 
;              object the oscillator frequency stabilize the detector stop
;              sounding.
;
; DATE: 2017-08-07
; COPYRIGHT: 2017 Jacques Deschênes
 
    
    include p10f322.inc
    radix dec 
    
    __config _WDTE_OFF&_FOSC_EC&_MCLRE_ON

XOFR equ 143181 ; crystal oscillator frequency Mhz
FCY  equ  XOFR/4  ; 35795 Mhz ; MCU cycle frequency
TCY  equ 279 ; instrcution cycle in nsec

    
RAM0  equ 64 ; RAM base address
RAM_SIZE equ 64 
  
variables  udata RAM0
last res 1 ; last TMR0 count copied from variable 'run' at 'save_run'.
run res 1   ; current run TMR0 count read at beginning of 'tmr2_isr'.
slope res 1 ; direction of change in frequency of detection oscillator.
temp res 1 ; temporary working variable
w_temp res 1 ; save W register at isr entry
s_temp res 1 ; save STATUS register at isr entry
 
; sound trigger level
; frequency must change in same direction TR_LEVEL times in a row to trigger sound. 
TR_LVL equ 3

; MCU reset entry point 
    org 0
    goto init
    
; MCU interrupt service routine entry point.    
    org 4
isr:
    ; save W and STATUS
    movwf w_temp
    swapf STATUS,W
    movwf s_temp
tmr2_isr:    
    bcf PIR1,TMR2IF
    ; save current value of TMR0 in run
    movfw TMR0
    movwf run
    ; compare TMR0 with 'last'
    subwf last
    skpnz
    goto null ; TMR0==last
    skpc
    goto positive
; TMR0<last    
negative:    
    decf slope
    goto check
; TMR0>last    
positive: 
    incf slope
; compare abs(slope) with TR_LVL    
check:
    movfw slope
    movwf temp
    btfss temp,7
    goto abs
    ; slope is negative compute its absolute value.
    comf temp
    incf temp
abs:; temp=abs(slope)    
    ; compare with TR_LVL
    movlw TR_LVL
    subwf temp
    skpc
    ; slope<TR_LVL no change to sound output
    goto save_run
    ; slope>=TR_LVL active sound output
    bsf PWM1CON,PWM1OE
    goto save_run
null:
    clrf slope
no_sound:
   ; disable sound when no change in frequency. 
   bcf PWM1CON,PWM1OE
; save last run count
; to compare with TMR0 value in next isr run   
save_run:
    movfw run
    movwf last
    clrf TMR0
isr_exit:
    ; restore W and STATUS
    swapf s_temp,W
    movwf STATUS
    swapf w_temp,F
    swapf w_temp,W
    retfie
    
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;    MCU hardware initialisation
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;    
init:
    ; clear RAM
    movlw RAM0
    movwf FSR
clear_ram:    
    clrf INDF
    incf FSR
    btfss FSR,7
    goto clear_ram
    ;disable all analog inputs
    clrf ANSELA
    ; RA0 is audio output
    bcf TRISA,RA0
    ; no pullup on T0CKI
    bcf WPUA,RA2
    ; TIMR0 clocked from T0CKI input. Disable prescaler
    movlw (1<<PSA)|(1<<T0CS)
    movwf OPTION_REG
    ;  configuring TMR2 and PWM1 for audio output
    ; TMR2 trigger an interrupt every 32 msec.
    ;TMR2  prescale=64, postscale=16
    movlw (15<<TOUTPS0)|(3<<T2CKPS0)
    movwf T2CON
    ; configure PWM1 for 500 hz 50% duty cycle tone
    movlw 111
    movwf PR2 ; 2 msec period
    clrc
    rrf PR2,W
    movwf PWM1DCH
    clrf PWM1DCL
    bsf PWM1CON,PWM1EN
    bsf PWM1CON,PWM1OE
    bsf T2CON,TMR2ON ;enable TMR2/PWM1 clock 
    ; enable interrupts
    bsf PIE1,TMR2IE
    movlw (1<<PEIE)|(1<<GIE)
    movwf INTCON
    ; idle loop everything done in 'isr' routine.
    goto $
    
    
    end 