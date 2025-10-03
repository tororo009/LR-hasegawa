v {xschem version=3.4.7RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -120 120 80 120 {lab=#net1}
N 410 -70 410 30 {lab=#net2}
N -130 120 -120 120 {lab=#net1}
N -90 40 80 40 {lab=CLKIN}
N -260 120 -230 120 {lab=CLKIN}
N -120 -130 -120 70 {lab=#net1}
N -230 40 -90 40 {lab=CLKIN}
N -250 40 -250 120 {lab=CLKIN}
N -250 40 -230 40 {lab=CLKIN}
N 80 120 100 120 {lab=#net1}
N 80 40 100 40 {lab=CLKIN}
N 0 80 40 80 {lab=#net3}
N -120 70 -120 120 {lab=#net1}
N 0 20 0 80 {lab=#net3}
N 140 80 170 80 {lab=#net2}
N 410 130 410 180 {lab=#net2}
N -0 -60 50 -60 {lab=#net3}
N -0 -60 -0 20 {lab=#net3}
N -0 -80 50 -80 {lab=R}
N -0 -180 -0 -80 {lab=R}
N -60 -180 -0 -180 {lab=R}
N -340 -120 -340 -70 {lab=#net4}
N -340 -70 -270 -70 {lab=#net4}
N -340 -50 -270 -50 {lab=#net5}
N -340 -50 -340 60 {lab=#net5}
N 410 30 410 130 {lab=#net2}
N -430 180 170 180 {lab=#net2}
N -430 70 -430 180 {lab=#net2}
N -500 50 -430 50 {lab=#net6}
N -540 -110 -430 -110 {lab=CLKIN}
N -500 -110 -500 -50 {lab=CLKIN}
N -540 -130 -430 -130 {lab=D}
N -540 -180 -160 -180 {lab=R}
N -540 120 -260 120 {lab=CLKIN}
N -180 -60 -100 -60 {lab=#net7}
N -30 -90 -30 -20 {lab=#net3}
N -90 -90 -90 -20 {lab=#net7}
N -100 -60 -90 -60 {lab=#net7}
N -30 -60 -0 -60 {lab=#net3}
N -120 -130 -60 -130 {lab=#net1}
N -60 20 -60 40 {lab=CLKIN}
N -60 -90 -60 -60 {lab=VDD}
N -60 -60 -50 -60 {lab=VDD}
N -70 -40 -60 -40 {lab=GND}
N -60 -40 -60 -20 {lab=GND}
N -630 120 -540 120 {lab=CLKIN}
N -540 -110 -540 120 {lab=CLKIN}
N 170 80 410 80 {lab=#net2}
N 170 180 410 180 {lab=#net2}
N 140 -70 410 -70 {lab=#net2}
N 410 -70 470 -70 {lab=#net2}
N -790 120 -750 120 {lab=PDIN}
N -650 120 -630 120 {lab=CLKIN}
N -770 120 -770 210 {lab=PDIN}
N -1040 20 -880 20 {lab=CLK}
N -880 20 -880 110 {lab=CLK}
N -1040 -130 -540 -130 {lab=D}
N -1060 -180 -540 -180 {lab=R}
N -1060 -130 -1040 -130 {lab=D}
N -1060 20 -1040 20 {lab=CLK}
N -1060 130 -880 130 {lab=PD}
N -160 -180 -60 -180 {lab=R}
N 760 -10 760 10 {lab=#net8}
N 760 70 760 110 {lab=GND}
N 570 -70 760 -70 {lab=OUT}
C {LR_Work2/symbol/INVERTER.sym} 10 120 0 0 {name=x7}
C {LR_Work2/symbol/CLOCKEDINVERTER.sym} -20 80 2 0 {name=x6}
C {LR_Work2/NAND2.sym} 200 -70 0 0 {name=x1}
C {LR_Work2/NAND2.sym} -120 -60 0 0 {name=x2}
C {LR_Work2/NAND2.sym} -280 60 0 0 {name=x3}
C {LR_Work2/NAND2.sym} -280 -120 0 0 {name=x8}
C {LR_Work2/symbol/INVERTER.sym} -500 190 1 0 {name=x9}
C {ipin.sym} -1060 -180 0 0 {name=p1 lab=R}
C {ipin.sym} -1060 -130 0 0 {name=p3 lab=D}
C {ipin.sym} -1060 20 0 0 {name=p4 lab=CLK}
C {NMOS_MIN.sym} -60 20 3 0 {name=M4 model=nch w=1u l=0.35u as=0 ps=0 ad=0 pd=0 m=1}
C {PMOS_MIN.sym} -60 -130 1 0 {name=M1 model=pch w=3u l=0.35u as=0 ps=0 ad=0 pd=0 m=1}
C {vdd.sym} -50 -60 0 0 {name=l1 lab=VDD}
C {gnd.sym} -70 -40 0 0 {name=l2 lab=GND}
C {code_shown.sym} 160 -1020 0 0 {name=spice only_toplevel=false value="

.inc /home/tororo/Xschem/osu_mos_model.sp

VVDD VDD 0 DC 3.3

*VR R 0 pulse(0 3.3 700n 1n 1n 100n 200n)
VR R 0 DC 3.3
VD D 0 pulse(0 3.3 200n 1n 1n 100n 200n)
*VD D 0 DC 3.3
*VPD PD 0 pulse(0 3.3 500n 1n 1n 100n 500n)
VPD PD 0 DC 3.3

VCLK CLK 0 pulse(0 3.3 25n 1n 1n 50n 100n)
*VCLK CLK 0 pulse(0 3.3 0n 1n 1n 12.5n 25n)

*Cload OUT 0 1p


.control
tran 1n 500n

meas TRAN Iavg AVG I(VVDD)

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
C {LR_Work2/symbol/INVERTER.sym} 710 -70 0 0 {name=x4}
C {LR_Work2/NAND2.sym} -730 120 0 0 {name=x10}
C {LR_Work2/symbol/INVERTER.sym} -510 120 0 0 {name=x11}
C {ipin.sym} -1060 130 0 0 {name=p2 lab=PD}
C {lab_pin.sym} -580 120 0 0 {name=p6 sig_type=std_logic lab=CLKIN}
C {lab_pin.sym} -770 210 0 0 {name=p7 sig_type=std_logic lab=PDIN}
C {gnd.sym} 760 110 0 0 {name=l3 lab=GND}
C {CAP_MIN.sym} 760 10 0 0 {name=C1
m=1
value=1p
footprint=1206
device=ceramic}
C {RES_MIN.sym} 760 -70 0 0 {name=R1
value=1600
footprint=1206
device=resistor
m=1}
C {lab_pin.sym} 660 -70 0 0 {name=p5 sig_type=std_logic lab=OUT}
