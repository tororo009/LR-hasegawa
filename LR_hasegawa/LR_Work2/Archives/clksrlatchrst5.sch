v {xschem version=3.4.7RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -1600 40 -1600 70 {lab=#net1}
N -1600 -50 -1600 -20 {lab=#net2}
N -1710 -70 -1600 -70 {lab=#net3}
N -1800 -60 -1800 80 {lab=#net4}
N -1850 10 -1800 10 {lab=#net4}
N -1980 10 -1950 10 {lab=#net5}
N -2120 20 -2070 20 {lab=CLK}
N -1090 80 -970 80 {lab=#net2}
N -1090 -60 -970 -60 {lab=#net1}
N -870 -60 -830 -60 {lab=#net6}
N -870 80 -830 80 {lab=#net7}
N -730 -60 -690 -60 {lab=#net8}
N -730 80 -690 80 {lab=#net9}
N -1980 -80 -1950 -80 {lab=#net10}
N -2120 -70 -2070 -70 {lab=R}
N -2190 -90 -2070 -90 {lab=#net11}
N -1850 -80 -1800 -80 {lab=#net12}
N -2120 90 -2070 90 {lab=S}
N -1980 100 -1950 100 {lab=#net13}
N -1850 100 -1800 100 {lab=#net14}
N -2150 110 -2070 110 {lab=#net15}
N -1710 90 -1600 90 {lab=#net16}
N -2430 0 -2400 0 {lab=#net15}
N -2570 10 -2520 10 {lab=PD}
N -2570 -10 -2520 -10 {lab=RST}
N -590 -60 -540 -60 {lab=#net17}
N -590 80 -540 80 {lab=#net18}
N -440 80 -380 80 {lab=Q}
N -440 -60 -380 -60 {lab=XQ}
N -380 140 -380 180 {lab=GND}
N -380 -0 -380 40 {lab=GND}
N -1510 80 -1090 80 {lab=#net2}
N -1510 -60 -1090 -60 {lab=#net1}
N -1600 40 -1020 -60 {lab=#net1}
N -1600 -20 -1020 80 {lab=#net2}
N -2250 -90 -2190 -90 {lab=#net11}
N -2300 -0 -2250 -0 {lab=#net11}
N -2250 -0 -2070 0 {lab=#net11}
N -2250 -90 -2250 -0 {lab=#net11}
N -2420 -0 -2420 110 {lab=#net15}
N -2420 110 -2150 110 {lab=#net15}
C {ipin.sym} -2570 -10 0 0 {name=p1 lab=RST}
C {ipin.sym} -2120 90 0 0 {name=p2 lab=S}
C {ipin.sym} -2120 20 0 0 {name=p3 lab=CLK}
C {LR_Work2/NAND2.sym} -1650 -70 0 0 {name=x1}
C {LR_Work2/NAND2.sym} -1650 90 0 0 {name=x2}
C {LR_Work2/NAND2.sym} -1450 -60 0 0 {name=x3}
C {LR_Work2/NAND2.sym} -1450 80 0 0 {name=x4}
C {ipin.sym} -2120 -70 0 0 {name=p6 lab=R}
C {LR_Work2/NAND2.sym} -1920 10 0 0 {name=x5}
C {LR_Work2/symbol/INVERTER.sym} -730 80 0 0 {name=x6}
C {ipin.sym} -2570 10 0 0 {name=p7 lab=PD}
C {LR_Work2/symbol/INVERTER.sym} -1710 10 0 0 {name=x7}
C {LR_Work2/symbol/INVERTER.sym} -730 -60 0 0 {name=x9}
C {LR_Work2/NAND2.sym} -1920 -80 0 0 {name=x11}
C {LR_Work2/symbol/INVERTER.sym} -1710 -80 0 0 {name=x12}
C {LR_Work2/NOR2.sym} -1920 100 0 0 {name=x13}
C {LR_Work2/symbol/INVERTER.sym} -1710 100 0 0 {name=x14}
C {code_shown.sym} -270 -310 0 0 {name=spice1 only_toplevel=false value="

.inc /home/tororo/Xschem/osu_mos_model.sp

VVDD VDD 0 DC 3.3

VRST RST 0 pulse(0 3.3 0n 1n 1n 700n 800n)
*VRST RST 0 DC 3.3
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
meas TRAN tphl TRIG CLK VAL=1.65 RISE=3 TARG Q VAL=1.65 FALL=1

set file=sim.log
write "clksrlatchrst5.raw"

.endc"}
C {LR_Work2/NAND2.sym} -2370 0 0 0 {name=x16}
C {LR_Work2/symbol/INVERTER_MIN.sym} -2160 0 0 0 {name=x18}
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
