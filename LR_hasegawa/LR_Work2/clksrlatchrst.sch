v {xschem version=3.4.7RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -1410 40 -1410 70 {lab=#net1}
N -1410 -50 -1410 -20 {lab=#net2}
N -1520 -70 -1410 -70 {lab=#net3}
N -1610 -60 -1610 80 {lab=#net4}
N -1660 10 -1610 10 {lab=#net4}
N -1790 10 -1760 10 {lab=#net5}
N -1930 20 -1880 20 {lab=CLK}
N -870 -60 -830 -60 {lab=#net6}
N -870 80 -830 80 {lab=#net7}
N -730 -60 -690 -60 {lab=#net8}
N -730 80 -690 80 {lab=#net9}
N -1660 -80 -1610 -80 {lab=R}
N -1660 100 -1610 100 {lab=S}
N -1520 90 -1410 90 {lab=#net10}
N -1650 220 -1620 220 {lab=#net11}
N -590 -60 -540 -60 {lab=#net12}
N -590 80 -540 80 {lab=#net13}
N -440 80 -380 80 {lab=Q}
N -440 -60 -380 -60 {lab=XQ}
N -380 140 -380 180 {lab=GND}
N -380 -0 -380 40 {lab=GND}
N -1940 230 -1740 230 {lab=RST}
N -2010 0 -2010 210 {lab=PD}
N -2010 210 -1740 210 {lab=PD}
N -2070 0 -1880 0 {lab=PD}
N -1080 80 -970 80 {lab=#net2}
N -1320 80 -1290 70 {lab=#net14}
N -1520 220 -1290 220 {lab=#net15}
N -1290 90 -1290 220 {lab=#net15}
N -1200 80 -1180 80 {lab=#net16}
N -1410 40 -1000 -60 {lab=#net1}
N -1410 -20 -1000 80 {lab=#net2}
N -1320 -60 -970 -60 {lab=#net1}
C {ipin.sym} -1940 230 0 0 {name=p1 lab=RST}
C {ipin.sym} -1660 100 0 0 {name=p2 lab=S}
C {ipin.sym} -1930 20 0 0 {name=p3 lab=CLK}
C {LR_Work2/NAND2.sym} -1460 -70 0 0 {name=x1}
C {LR_Work2/NAND2.sym} -1460 90 0 0 {name=x2}
C {LR_Work2/NAND2.sym} -1260 -60 0 0 {name=x3}
C {LR_Work2/NAND2.sym} -1260 80 0 0 {name=x4}
C {ipin.sym} -1660 -80 0 0 {name=p6 lab=R}
C {LR_Work2/NAND2.sym} -1730 10 0 0 {name=x5}
C {LR_Work2/symbol/INVERTER.sym} -730 80 0 0 {name=x6}
C {ipin.sym} -2070 0 0 0 {name=p7 lab=PD}
C {LR_Work2/symbol/INVERTER.sym} -1520 10 0 0 {name=x7}
C {LR_Work2/symbol/INVERTER.sym} -730 -60 0 0 {name=x9}
C {code_shown.sym} -270 -310 0 0 {name=spice1 only_toplevel=false value="

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

*Cload Q 0 1p
*Cload XQ 0 1p


.control
tran 1n 1000n

meas TRAN Iavg AVG I(VVDD)

meas TRAN tplh TRIG CLK VAL=1.65 RISE=2 TARG Q VAL=1.65 RISE=1
meas TRAN tphl TRIG CLK VAL=1.65 RISE=1 TARG Q VAL=1.65 FALL=1


write "clksrlatch.raw"

.endc"}
C {LR_Work2/NAND2.sym} -1590 220 0 0 {name=x16}
C {LR_Work2/symbol/INVERTER_MIN.sym} -1380 220 0 0 {name=x18}
C {LR_Work2/symbol/INVERTER3.sym} -590 -60 0 0 {name=x8}
C {LR_Work2/symbol/INVERTER3.sym} -590 80 0 0 {name=x10}
C {LR_Work2/symbol/INVERTER9.sym} -450 -60 0 0 {name=x17}
C {LR_Work2/symbol/INVERTER9.sym} -450 80 0 0 {name=x19}
C {LR_Work2/symbol/INVERTER18.sym} -300 -60 0 0 {name=x20}
C {LR_Work2/symbol/INVERTER18.sym} -300 80 0 0 {name=x21}
C {lab_pin.sym} -400 80 0 0 {name=p4 sig_type=std_logic lab=Q}
C {lab_pin.sym} -400 -60 0 0 {name=p5 sig_type=std_logic lab=XQ}
C {gnd.sym} -380 40 0 0 {name=l1 lab=GND}
C {gnd.sym} -380 180 0 0 {name=l2 lab=GND}
C {CAP_MIN.sym} -380 -60 0 0 {name=C1
m=1
value=1p
footprint=1206
device=ceramic}
C {CAP_MIN.sym} -380 80 0 0 {name=C2
m=1
value=1p
footprint=1206
device=ceramic}
C {LR_Work2/NAND2.sym} -1140 80 0 0 {name=x11}
C {LR_Work2/symbol/INVERTER.sym} -940 80 0 0 {name=x12}
