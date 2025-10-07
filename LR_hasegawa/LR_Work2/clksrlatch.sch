v {xschem version=3.4.7RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -510 -40 -510 -10 {lab=#net1}
N -510 -40 -320 -140 {lab=#net1}
N -510 -130 -510 -100 {lab=#net2}
N -510 -100 -320 -0 {lab=#net2}
N -620 -150 -510 -150 {lab=#net3}
N -710 -140 -710 -0 {lab=#net4}
N -760 -70 -710 -70 {lab=#net4}
N -890 -70 -860 -70 {lab=#net5}
N -1030 -60 -980 -60 {lab=CLK}
N -420 -0 -300 0 {lab=#net2}
N -420 -140 -300 -140 {lab=#net1}
N -200 -140 -160 -140 {lab=#net6}
N -200 -0 -160 0 {lab=#net7}
N -60 -140 -20 -140 {lab=Q2}
N -60 -0 -20 0 {lab=Q1}
N -890 -160 -860 -160 {lab=#net8}
N -1030 -150 -980 -150 {lab=R}
N -1100 -170 -980 -170 {lab=#net9}
N -760 -160 -710 -160 {lab=#net10}
N -1030 10 -980 10 {lab=S}
N -890 20 -860 20 {lab=#net11}
N -760 20 -710 20 {lab=#net12}
N -1060 30 -980 30 {lab=#net13}
N -1180 -170 -1100 -170 {lab=#net9}
N -1160 -170 -1160 30 {lab=#net9}
N -620 10 -510 10 {lab=#net14}
N -1340 -170 -1310 -170 {lab=#net15}
N -1480 -160 -1430 -160 {lab=PD}
N -1480 -180 -1430 -180 {lab=RST}
N -1210 -170 -1180 -170 {lab=#net9}
N -1480 -160 -1480 -80 {lab=PD}
N -1480 -80 -980 -80 {lab=PD}
C {ipin.sym} -1480 -180 0 0 {name=p1 lab=RST}
C {ipin.sym} -1030 10 0 0 {name=p2 lab=S}
C {ipin.sym} -1030 -60 0 0 {name=p3 lab=CLK}
C {opin.sym} -20 -140 0 0 {name=p4 lab=Q2}
C {LR_Work2/NAND2.sym} -560 -150 0 0 {name=x1}
C {LR_Work2/NAND2.sym} -560 10 0 0 {name=x2}
C {LR_Work2/NAND2.sym} -360 -140 0 0 {name=x3}
C {LR_Work2/NAND2.sym} -360 0 0 0 {name=x4}
C {opin.sym} -20 0 0 0 {name=p5 lab=Q1}
C {ipin.sym} -1030 -150 0 0 {name=p6 lab=R}
C {LR_Work2/NAND2.sym} -830 -70 0 0 {name=x5}
C {LR_Work2/symbol/INVERTER.sym} -60 0 0 0 {name=x6}
C {ipin.sym} -1480 -80 0 0 {name=p7 lab=PD}
C {LR_Work2/symbol/INVERTER.sym} -620 -70 0 0 {name=x7}
C {LR_Work2/symbol/INVERTER.sym} 80 0 0 0 {name=x8}
C {LR_Work2/symbol/INVERTER.sym} -60 -140 0 0 {name=x9}
C {LR_Work2/symbol/INVERTER.sym} 80 -140 0 0 {name=x10}
C {LR_Work2/NAND2.sym} -830 -160 0 0 {name=x11}
C {LR_Work2/symbol/INVERTER.sym} -620 -160 0 0 {name=x12}
C {LR_Work2/NOR2.sym} -830 20 0 0 {name=x13}
C {LR_Work2/symbol/INVERTER.sym} -620 20 0 0 {name=x14}
C {LR_Work2/symbol/INVERTER.sym} -920 30 0 0 {name=x15}
C {code_shown.sym} 30 -720 0 0 {name=spice1 only_toplevel=false value="

.inc /home/tororo/Xschem/osu_mos_model.sp

VVDD VDD 0 DC 3.3

*VRST RST 0 pulse(0 3.3 0n 1n 1n 700n 800n)
VRST RST 0 DC 3.3
VS S 0 pulse(0 3.3 100n 1n 1n 100n 200n)
VR R 0 pulse(0 3.3 0n 1n 1n 100n 200n)
*VD D 0 DC 3.3
VPD PD 0 pulse(0 3.3 0n 1n 1n 500n 600n)
*VPD PD 0 DC 3.3

VCLK CLK 0 pulse(0 3.3 25n 1n 1n 50n 100n)
*VCLK CLK 0 DC 0

Cload OUT 0 1p


.control
tran 1n 1000n

meas TRAN Iavg AVG I(VVDD)

meas TRAN tplh TRIG CLK VAL=1.65 RISE=3 TARG OUT VAL=1.65 RISE=1
meas TRAN tphl TRIG CLK VAL=1.65 RISE=4 TARG OUT VAL=1.65 FALL=2


write "clksrlatch.raw"

.endc"}
C {LR_Work2/NAND2.sym} -1280 -170 0 0 {name=x16}
C {LR_Work2/symbol/INVERTER.sym} -1070 -170 0 0 {name=x17}
