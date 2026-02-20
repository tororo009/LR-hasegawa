v {xschem version=3.4.7RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -180 -230 -180 -190 {lab=VDD}
N -180 -230 0 -230 {lab=VDD}
N 0 -250 0 -230 {lab=VDD}
N 0 -230 180 -230 {lab=VDD}
N 180 -230 180 -190 {lab=VDD}
N 80 -230 80 -190 {lab=VDD}
N -80 -230 -80 -190 {lab=VDD}
N -180 -160 -80 -160 {lab=VDD}
N -130 -230 -130 -160 {lab=VDD}
N 80 -160 180 -160 {lab=VDD}
N 130 -230 130 -160 {lab=VDD}
N 80 -130 80 -110 {lab=PR1}
N 180 -130 180 -110 {lab=PR1}
N -40 -160 -30 -160 {lab=PR1}
N -40 -110 20 -160 {lab=PR2}
N 20 -160 40 -160 {lab=PR2}
N -180 -130 -180 -110 {lab=PR2}
N -80 -130 -80 -110 {lab=PR2}
N -180 -110 -40 -110 {lab=PR2}
N -80 -110 -80 -30 {lab=PR2}
N 80 -110 80 10 {lab=PR1}
N -80 -30 -80 10 {lab=PR2}
N -80 70 -80 110 {lab=NR1}
N 80 70 80 110 {lab=NR2}
N 80 270 80 310 {lab=GND}
N -80 270 -80 310 {lab=GND}
N -80 190 -80 210 {lab=NR1}
N 80 190 80 210 {lab=NR2}
N -30 -160 -20 -160 {lab=PR1}
N -20 -160 40 -110 {lab=PR1}
N 140 -10 140 40 {lab=CLK}
N 120 40 140 40 {lab=CLK}
N -140 -10 -140 40 {lab=CLK}
N -140 40 -120 40 {lab=CLK}
N 10 310 10 350 {lab=GND}
N -80 40 80 40 {lab=#net1}
N 40 -110 180 -110 {lab=PR1}
N -80 310 80 310 {lab=GND}
N 20 240 40 240 {lab=PR2}
N -40 240 -20 240 {lab=PR1}
N -100 240 -100 310 {lab=GND}
N -100 310 -80 310 {lab=GND}
N -100 240 -80 240 {lab=GND}
N 80 240 100 240 {lab=GND}
N 100 240 100 310 {lab=GND}
N 80 310 100 310 {lab=GND}
N -80 110 -80 190 {lab=NR1}
N 80 110 80 190 {lab=NR2}
N -80 -10 -40 -10 {lab=PR2}
N -40 -10 20 240 {lab=PR2}
N 40 -10 80 -10 {lab=PR1}
N -20 240 40 -10 {lab=PR1}
N -310 -90 -300 -90 {lab=CLK}
N -300 -90 240 -90 {lab=CLK}
N 240 -160 240 -90 {lab=CLK}
N 220 -160 240 -160 {lab=CLK}
N -240 -160 -220 -160 {lab=CLK}
N -240 -160 -240 -90 {lab=CLK}
N -140 -90 -140 -10 {lab=CLK}
N 140 -90 140 -10 {lab=CLK}
N 470 -60 540 -60 {lab=OUT1}
N 470 60 540 60 {lab=OUT2}
N 500 -60 500 -30 {lab=OUT1}
N 360 30 500 -30 {lab=OUT1}
N 360 30 360 50 {lab=OUT1}
N 360 50 380 50 {lab=OUT1}
N 500 30 500 60 {lab=OUT2}
N 360 -30 500 30 {lab=OUT2}
N 360 -50 360 -30 {lab=OUT2}
N 360 -50 380 -50 {lab=OUT2}
N 80 -70 380 -70 {lab=PR1}
N -80 -30 300 -30 {lab=PR2}
N 300 -30 300 70 {lab=PR2}
N 300 70 380 70 {lab=PR2}
N -290 -80 80 -80 {lab=PR1}
N -290 -20 -80 -20 {lab=PR2}
N -270 110 -80 110 {lab=NR1}
N -290 110 -270 110 {lab=NR1}
N -270 170 80 170 {lab=NR2}
N -290 170 -270 170 {lab=NR2}
C {NMOS_MIN.sym} -120 40 0 0 {name=M2 model=nch w=6.5u l=0.65u as=0 ps=0 ad=0 pd=0 m=1}
C {NMOS_MIN.sym} 120 40 0 1 {name=M4 model=nch w=6.5u l=0.65u as=0 ps=0 ad=0 pd=0 m=1}
C {vdd.sym} 0 -250 0 0 {name=l1 lab=VDD}
C {gnd.sym} 10 350 0 0 {name=l2 lab=GND}
C {PMOS_MIN.sym} 220 -160 2 0 {name=M5 model=pch w=19.5u l=0.65u as=0 ps=0 ad=0 pd=0 m=1}
C {PMOS_MIN.sym} 40 -160 2 1 {name=M6 model=pch w=19.5u l=0.65u as=0 ps=0 ad=0 pd=0 m=1}
C {NMOS_MIN.sym} -40 240 0 1 {name=M7 model=nch w=6.5u l=0.65u as=0 ps=0 ad=0 pd=0 m=1}
C {NMOS_MIN.sym} 40 240 0 0 {name=M8 model=nch w=6.5u l=0.65u as=0 ps=0 ad=0 pd=0 m=1}
C {ipin.sym} -310 -90 0 0 {name=p2 lab=CLK}
C {LR_Work2/symbol/2NANDLR.sym} 530 -60 0 0 {name=x1}
C {LR_Work2/symbol/2NANDLR.sym} 530 60 0 0 {name=x2}
C {opin.sym} 540 -60 0 0 {name=p1 lab=OUT1}
C {opin.sym} 540 60 0 0 {name=p3 lab=OUT2}
C {PMOS_MIN.sym} -40 -160 2 0 {name=M1 model=pch w=19.5u l=0.65u as=0 ps=0 ad=0 pd=0 m=1}
C {PMOS_MIN.sym} -220 -160 2 1 {name=M3 model=pch w=19.5u l=0.65u as=0 ps=0 ad=0 pd=0 m=1}
C {lab_wire.sym} -290 110 0 0 {name=p7 sig_type=std_logic lab=NR1}
C {lab_wire.sym} -290 170 0 0 {name=p8 sig_type=std_logic lab=NR2}
C {lab_pin.sym} -290 -80 0 0 {name=p4 sig_type=std_logic lab=PR1}
C {lab_pin.sym} -290 -20 0 0 {name=p5 sig_type=std_logic lab=PR2}
C {isource.sym} -270 140 0 0 {name=I0 value=2.5V}
C {isource.sym} -270 -50 0 0 {name=I1 value=2.5V}
C {code_shown.sym} 240 200 0 0 {name=spice only_toplevel=false value="

.inc /home/tororo/LR/T_mos_model.sp

VVDD VDD 0 DC 3.3

*VINP INP 0 pwl (0 0 25n 0 26n 3.3 75n 3.3 76n 0.2 125n 0.2 126n 3.1 175n 3.1 176n 0.4 225n 0.4 226n 2.9 275n 2.9 276n 0.6 325n 0.6 326n 2.7 375n 2.7 376n 0.8 425n 0.8 426n 2.5 475n 2.5 476n 1.0 525n 1.0 526n 2.3 575n 2.3 576n 1.2 625n 1.2 
*+ 626n 2.1 675n 2.1 +676n 1.4 725n 1.4 726n 1.9 775n 1.9 776n 1.6 825n 1.6 826n 1.7 875n 1.7 ) 
*VINP INP 0 pwl (0 0 25n 0 26n 1.7 75n 1.7 76n 1.6 125n 1.6 126n 1.68 175n 1.68 176n 1.62 225n 1.62 226n 1.66 275n 1.66 276n 1.64 325n 1.64 326n 1.655 375n 1.655 376n 1.645 425n 1.645 426n 1.651 475n 1.651 476n 1.649 525n 1.649 526n 1.6501 575n 1.6501 576n 1.6499 625n 1.6499 626n 1.65001 675n 1.65001 676n 1.64999 725n 1.6499 726n 1.9 775n 1.9 776n 1.6 825n 1.6 826n 1.7 875n 1.7)
*VINP INP 0 pwl (0 2.15 25n 2.15 26n 1.15 75n 1.15 76n 1.95 125n 1.95 126n 1.35 175n 1.35)
*VINP INP 0 pwl (0 1.85 25n 1.85 26n 1.45 75n 1.45 76n 1.83 125n 1.83 126n 1.47 175n 1.47)

*VREF REF 0 DC 1.65

*VCLK CLK 0 pulse(0 3.3 0 1p 1p 12.5n 50n)
VCLK CLK 0 pulse(0 3.3 0n 1n 1n 12.5n 25n)

.control
tran 1n 875n

*meas tran delayIN1 find time WHEN v(CLK)=0.9 RISE=3 
*meas tran delayOUT find time WHEN v(OUT1)=0.9 FALL=2
*let delay1 = delayOUT - delayIN1
*echo tpHL = $&delay1

*meas tran delayIN1 find time WHEN v(CLK)=0.9 RISE=4 
*meas tran delayOUT find time WHEN v(OUT1)=0.9 RISE=2
*let delay2 = delayOUT - delayIN1
*echo tpLH = $&delay2


write "Wide-swing_clocked_comparatortest.raw"

.endc"}
