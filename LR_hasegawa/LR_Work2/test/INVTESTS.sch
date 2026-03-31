v {xschem version=3.4.7RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -80 0 -40 0 {lab=CLK}
N 140 -120 140 -60 {lab=VDD}
N 140 60 140 100 {lab=GND}
N 60 -0 140 0 {lab=OUT}
C {LR_Work2/symbol/INVERTER_MIN.sym} 200 0 0 0 {name=x1}
C {ipin.sym} -80 0 0 0 {name=p1 lab=CLK}
C {code_shown.sym} 200 -130 0 0 {name=spice only_toplevel=false value="

.inc /home/tororo/Xschem/osu_mos_model.sp

VVDD VDD 0 DC 3.3


VCLK CLK 0 pulse(0 3.3 25n 1n 1n 50n 100n)
*VCLK CLK 0 DC 0

Cload OUT 0 1p


.control
tran 1n 1000n

meas TRAN Iavg AVG I(VVDD)

meas TRAN tplh TRIG CLK VAL=1.65 FALL=1 TARG OUT VAL=1.65 RISE=2
meas TRAN tphl TRIG CLK VAL=1.65 RISE=2 TARG OUT VAL=1.65 FALL=2


write "INVTESTS.raw"

.endc"}
C {lab_pin.sym} 110 0 0 0 {name=p2 sig_type=std_logic lab=OUT}
C {isource.sym} 140 -30 0 0 {name=I0 value=100}
C {vdd.sym} 140 -120 0 0 {name=l1 lab=VDD}
C {gnd.sym} 140 100 0 0 {name=l2 lab=GND}
