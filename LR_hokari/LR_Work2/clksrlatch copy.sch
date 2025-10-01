v {xschem version=3.4.7RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -740 120 -540 120 {lab=#net1}
N -750 120 -740 120 {lab=#net1}
N -710 40 -540 40 {lab=CLK}
N -880 120 -850 120 {lab=CLK}
N -710 -130 -710 -110 {lab=#net1}
N -740 -130 -710 -130 {lab=#net1}
N -740 -130 -740 70 {lab=#net1}
N -850 40 -710 40 {lab=CLK}
N -870 40 -870 120 {lab=CLK}
N -870 40 -850 40 {lab=CLK}
N -710 -30 -710 -10 {lab=CLK}
N -540 120 -520 120 {lab=#net1}
N -540 40 -520 40 {lab=CLK}
N -650 -70 -580 -70 {lab=#net2}
N -620 80 -580 80 {lab=#net2}
N -740 70 -740 120 {lab=#net1}
N -620 20 -620 80 {lab=#net2}
N -710 -10 -710 40 {lab=CLK}
N -620 -70 -620 20 {lab=#net2}
N -580 -70 -530 -70 {lab=#net2}
N -440 -80 -420 -80 {lab=#net3}
N -320 -80 -320 80 {lab=OUT}
N -480 80 -320 80 {lab=OUT}
N -530 -170 -530 -90 {lab=#net4}
N -870 -170 -650 -170 {lab=RST}
N -320 -80 -200 -80 {lab=OUT}
N -550 -170 -530 -170 {lab=#net4}
N -880 -70 -750 -70 {lab=D}
N -960 120 -880 120 {lab=CLK}
N -960 -70 -880 -70 {lab=D}
N -960 -170 -870 -170 {lab=RST}
C {code_shown.sym} -10 -200 0 0 {name=spice only_toplevel=false value="

.inc /home/tororo/LR/T_mos_model.sp

VVDD VDD 0 DC 3.3

VR R 0 DC 0
VD D 0 pulse(0 3.3 25n 1n 1n 100n 200n)


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


write "clksrlatch.raw"

.endc"}
C {LR_Work2/symbol/INVERTER.sym} -180 -80 0 0 {name=x5}
C {LR_Work2/symbol/INVERTER.sym} -610 120 0 0 {name=x7}
C {LR_Work2/symbol/CLOCKEDINVERTER.sym} -590 -70 0 0 {name=x4}
C {LR_Work2/symbol/CLOCKEDINVERTER.sym} -640 80 2 0 {name=x6}
C {LR_Work2/NAND2.sym} -380 -80 0 0 {name=x1}
C {LR_Work2//symbol/INVERTER.sym} -410 -170 0 0 {name=x2}
C {ipin.sym} -960 -170 0 0 {name=p1 lab=RST}
C {ipin.sym} -960 -70 0 0 {name=p2 lab=D}
C {ipin.sym} -960 120 0 0 {name=p3 lab=CLK}
C {opin.sym} -200 -80 0 0 {name=p4 lab=OUT}
