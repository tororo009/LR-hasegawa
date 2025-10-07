v {xschem version=3.4.7RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -80 0 -40 0 {lab=CLK}
N 60 -0 110 0 {lab=OUT}
N 90 60 90 90 {lab=GND}
C {LR_Work2/symbol/INVERTER_MIN.sym} 200 0 0 0 {name=x1}
C {ipin.sym} -80 0 0 0 {name=p1 lab=CLK}
C {opin.sym} 110 0 0 0 {name=p2 lab=OUT}
C {code_shown.sym} 200 -130 0 0 {name=spice only_toplevel=false value="

.inc /home/tororo/Xschem/osu_mos_model.sp

VVDD VDD 0 DC 3.3


VCLK CLK 0 pulse(0 3.3 25n 1n 1n 50n 100n)
*VCLK CLK 0 DC 0

*Cload OUT 0 1p


.control
tran 1n 1000n

meas TRAN Iavg AVG I(VVDD)

meas TRAN tplh TRIG CLK VAL=1.65 FALL=1 TARG OUT VAL=1.65 RISE=2
meas TRAN tphl TRIG CLK VAL=1.65 RISE=2 TARG OUT VAL=1.65 FALL=2


write "INVTESTS.raw"

.endc"}
C {CAP_MIN.sym} 90 0 0 0 {name=C1
m=1
value=1p
footprint=1206
device=ceramic}
C {gnd.sym} 90 90 0 0 {name=l1 lab=GND}
