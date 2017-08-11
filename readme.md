metal_detector
==============

A simple metal detector built around a PIC10F322 and a 2N3904 common base Colpitts oscillator.

schematic
---------

![schematic](schematic.png)

description
-----------
  The **PIC10F322** is clocked by an external crystal oscillator for stability. The chosen oscillator frequency is 14.3181Mhz (available on hand, any value up to
 16Mhz is good).

  The Colpitts oscillator use a 6" coil as detector. The oscillator output is sent to **T0CKI** input of PIC10F322 and **TIMER0** count the number of oscillator 
cycles during a fixed lapse of 32 msec. This 32 msec period is determined by TIMER2 which is used as period counter for the **PWM1** audio generator. The alarm audio tone
is at 500 hertz or 2 msec period. The postscaler of **TIMER2** is set to trigger an interrupt at every 16 audio period or 32 msec. The detection is done inside the interrupt service routine by comparing the value from **TMR0** register at each interrupt. This value is kept in **scale** variable to be compared with next reading. Oscillator frequency must change in same direction some consecutives reading to signal a detection. The constant **TR_LVL** determine that number of consecutives changes.
Variable **slope** is incremented when *TMR0>last* and decremented when *TMR0<last*.
If *TMR0=last*  **slope** is reset to 0 and the tone is disabled.

  The oscillator frequency is around 460 Khz that give 14720 cycles for a lapse of 32 msec. Only the modulo 256 count is kept as from one lapse to the next this value vary only for a few count. 

  When a tone is triggered the detector must be swept back and forth over the spot to confirm detection. When the coil stand still over the object the oscillator stabilize
at a new frequency and the alarm stop.

some math
---------

value of register PR2 for a tone of 500 Hertz

PR2=(FCY/PRESCACLE/500)-1

FCY=XOfreq/4  

XOfreq=14.3181Mhz

PRESCALE=64

**PR2**=(3.5795/64/500)-1=**111**  (division rounded to nearest integer)

The **32 msec** sample period and **TR_LVL** value of 2 are empiral from testing different setting.

Oscillator count modulo 256 during 32 msec sample period

**TMR0**=(460000*0.032)%256=**128**    (perfect for an 8 bits counter, range center, giving maximum room in both frequency increase and decrease.) 

Electronic assembly
--------------------

 The circuit is mounted on a 7cm x 9cm bakelike circuit board with single side 0.1" spaced copper pads. For stability an external crystal oscillator was used instead
of the internal MCU RC oscillator. XO is running at 14.3181 Mhz because it is what I had in hand. This MCU can work up to 16Mhz. 

![circuit board](circuitBoard.JPG)


Machanical assembly
-------------------

  A disk was cut in a 3/4" thick pine plank and a groove was carved on the circumference using a round file. 17 turns of 22 AWG magnet wire were wounded in this groove for a measured inductance of 115µH. A 1/2" square poplar stick was glued to this disk as an handle. To hold the circuit board 1/8" thick plywood was used
to build a small box.

![final assemblay](finalAssembly.JPG)


 
