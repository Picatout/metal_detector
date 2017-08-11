metal_detector
==============

A simple metal detector built around a PIC10F322 and a common base Colpitts oscillator.

schematic
---------
![schematic](schematic.png)

description
-----------
  The Colpitts oscillator use a 6" coil as detector. The oscillator output is sent to T0CKI input of PIC10F322 and clock TIMER0 used to count number of oscillator
cycles during a fixed lapse of 32 msec. This 32 msec period is determined by TIMER2 which is used as period counter for the PWM1 audio generator. The alarm audio tone
is at 500 hertz or 2 msec period. The postscaler of TIMER2 is set to trigger an interrupt at every 16 audio period or 32 msec. The detection is done inside the interrupt
service routine by comparing the value from TMR0 register at each interrupt. This value is kept in *scale* variable to be compared with next reading. A certain number of
change in frequency of detection oscillator in same direction in row should append to trigger alarm tone. The constant *TR_LVL* determine the number of consecutives
reading of TMR0 that differ from preceding reading in same direction to trigger the alarm. variable *slope* is incremented when TMR0>last and decremented when TMR0<last.
If TMR0=last the slope is reset to 0 and the tone is disabled.

  The oscillator frequency is around 460 Khz that give 14720 cycles for a lapse of 32 msec. Only the modulo 256 count is kept as from one lapse to the next this may vary only from a small value much less than 256. 

  The coil must be kept sweeping over ground when a detection occur because this the variation in frequency that is detected not its absolute value. If the sweeping is stopped over a decteted object the frequency stabilize to a new value and the tone stop earing.


construction
-----------------
  A disk was cut in a 3/4" thick pine plank and a groove was carved on the circumference of this disk with a round file. 17 turns of 22 AWG magnet wire were wounded in this groove for a resulting inductance of 115µH. A 1/2" square poplar stick was glued to this disk as an handle. To hold the circuit board 1/8" thick plywood was used
to build a small box.

|[final assemblay](finalAssembly.JPG)
electronic assembly
--------------------
 The circuit is mounted on a 7cm x 9cm bakelike circuit board with single side 0.1" spaced copper pads. For stability an external crystal oscillator was used instead
of the internal MCU RC oscillator. XO is running at 14.3181 Mhz because it is what I had in hand. This MCU can work up to 16Mhz. 

![circuit board](circuitBoard.JPG)

PR2 register value is (FCY/64/500 - 1) where 
   FCY is XOfreq/4.  
   64 is the TIMER2 prescale value. 
   500 is tone frequency. 

  For the chosen XO this give PR2 value of 111.

 
