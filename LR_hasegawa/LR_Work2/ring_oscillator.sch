v {xschem version=3.4.7RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -400 0 -340 0 {lab=#net1}
N -240 0 -190 0 {lab=#net2}
N -90 0 -50 0 {lab=#net3}
N 50 0 90 0 {lab=#net4}
N 190 0 270 0 {lab=OUT}
N 210 0 210 160 {lab=OUT}
N -390 160 210 160 {lab=OUT}
N -530 160 -450 160 {lab=OUT}
N -530 0 -530 160 {lab=OUT}
N -530 0 -500 0 {lab=OUT}
N -450 160 -390 160 {lab=OUT}
C {LR_Work2/symbol/INVERTER_MIN.sym} -260 0 0 0 {name=x1}
C {LR_Work2/symbol/INVERTER_MIN.sym} -100 0 0 0 {name=x2}
C {LR_Work2/symbol/INVERTER_MIN.sym} 50 0 0 0 {name=x3}
C {LR_Work2/symbol/INVERTER_MIN.sym} 190 0 0 0 {name=x4}
C {LR_Work2/symbol/INVERTER_MIN.sym} 330 0 0 0 {name=x5}
C {opin.sym} 270 0 0 0 {name=p1 lab=OUT}
C {code_shown.sym} 810 -80 0 0 {name=spice only_toplevel=false value="

.inc /home/tororo/Xschem/osu_mos_model.sp

VVDD VDD 0 DC 3.3


*VCLK CLK 0 pulse(0 3.3 25n 1n 1n 50n 100n)
*VCLK CLK 0 DC 0

*Cload OUT 0 1p


.control
tran 1n 1000n

meas TRAN Iavg AVG I(VVDD)

meas TRAN tplh TRIG OUT VAL=3 RISE=1 TARG OUT VAL=3 RISE=2
meas TRAN tphl TRIG CLK VAL=1.65 RISE=4 TARG OUT VAL=1.65 FALL=2


write "ring_oscillator.raw"

.endc"}
