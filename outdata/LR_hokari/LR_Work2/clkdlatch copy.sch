v {xschem version=3.4.7RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -120 120 80 120 {lab=#net1}
N 170 -70 170 30 {lab=OUT}
N -130 120 -120 120 {lab=#net1}
N -90 40 80 40 {lab=CLK}
N -260 120 -230 120 {lab=CLK}
N -120 -130 -120 70 {lab=#net1}
N -230 40 -90 40 {lab=CLK}
N -250 40 -250 120 {lab=CLK}
N -250 40 -230 40 {lab=CLK}
N 80 120 100 120 {lab=#net1}
N 80 40 100 40 {lab=CLK}
N 0 80 40 80 {lab=#net2}
N -120 70 -120 120 {lab=#net1}
N 0 20 0 80 {lab=#net2}
N 140 80 170 80 {lab=OUT}
N 170 30 170 80 {lab=OUT}
N 140 -70 210 -70 {lab=OUT}
N -0 -60 50 -60 {lab=#net2}
N -0 -60 -0 20 {lab=#net2}
N -0 -80 50 -80 {lab=#net3}
N -0 -180 -0 -80 {lab=#net3}
N -60 -180 -0 -180 {lab=#net3}
N -340 -120 -340 -70 {lab=#net4}
N -340 -70 -270 -70 {lab=#net4}
N -340 -50 -270 -50 {lab=#net5}
N -340 -50 -340 60 {lab=#net5}
N 170 80 170 180 {lab=OUT}
N -430 180 170 180 {lab=OUT}
N -430 70 -430 180 {lab=OUT}
N -500 50 -430 50 {lab=#net6}
N -540 -110 -430 -110 {lab=CLK}
N -500 -110 -500 -50 {lab=CLK}
N -540 -130 -430 -130 {lab=D}
N -540 -180 -160 -180 {lab=R}
N -540 120 -260 120 {lab=CLK}
N -180 -60 -100 -60 {lab=#net7}
N -30 -90 -30 -20 {lab=#net2}
N -90 -90 -90 -20 {lab=#net7}
N -100 -60 -90 -60 {lab=#net7}
N -30 -60 -0 -60 {lab=#net2}
N -120 -130 -60 -130 {lab=#net1}
N -60 20 -60 40 {lab=CLK}
N -60 -90 -60 -60 {lab=VDD}
N -60 -60 -50 -60 {lab=VDD}
N -70 -40 -60 -40 {lab=GND}
N -60 -40 -60 -20 {lab=GND}
N 210 -70 220 -70 {lab=OUT}
N -630 120 -540 120 {lab=CLK}
N -540 -110 -540 120 {lab=CLK}
C {LR_Work2/symbol/INVERTER.sym} 80 -180 0 0 {name=x5}
C {LR_Work2/symbol/INVERTER.sym} 10 120 0 0 {name=x7}
C {LR_Work2/symbol/CLOCKEDINVERTER.sym} -20 80 2 0 {name=x6}
C {LR_Work2/NAND2.sym} 200 -70 0 0 {name=x1}
C {LR_Work2/NAND2.sym} -120 -60 0 0 {name=x2}
C {LR_Work2/NAND2.sym} -280 60 0 0 {name=x3}
C {LR_Work2/NAND2.sym} -280 -120 0 0 {name=x8}
C {LR_Work2/symbol/INVERTER.sym} -500 190 1 0 {name=x9}
C {ipin.sym} -540 -180 0 0 {name=p1 lab=R}
C {ipin.sym} -540 -130 0 0 {name=p3 lab=D}
C {ipin.sym} -630 120 0 0 {name=p4 lab=CLK}
C {NMOS_MIN.sym} -60 20 3 0 {name=M4 model=nch w=6.5u l=0.65u as=0 ps=0 ad=0 pd=0 m=1}
C {PMOS_MIN.sym} -60 -130 1 0 {name=M1 model=pch w=19.5u l=0.65u as=0 ps=0 ad=0 pd=0 m=1}
C {vdd.sym} -50 -60 0 0 {name=l1 lab=VDD}
C {gnd.sym} -70 -40 0 0 {name=l2 lab=GND}
C {opin.sym} 220 -70 0 0 {name=p5 lab=OUT}
C {code_shown.sym} -1070 270 0 0 {name=spice only_toplevel=false value="

.inc /home/tororo/LR/T_mos_model.sp

VVDD VDD 0 DC 3.3

VR R 0 DC 0
VD D 0 pulse(0 3.3 25n 1n 1n 50n 100n)


VCLK CLK 0 pulse(0 3.3 0n 1n 1n 50n 100n)
*VCLK CLK 0 pulse(0 3.3 0n 1n 1n 12.5n 25n)

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


write "clkdlatch.raw"

.endc"}
