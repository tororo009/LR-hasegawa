v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -220 0 -160 0 {lab=#net1}
N -60 -0 20 0 {lab=#net2}
N 120 0 210 0 {lab=#net3}
N -350 0 -330 -0 {lab=#net4}
N -330 -0 -320 0 {lab=#net4}
N 310 -0 450 -0 {lab=OUT}
N -610 -30 -610 40 {lab=#net5}
N -610 -0 -580 -0 {lab=#net5}
N -710 -30 -650 -30 {lab=IN1}
N -710 40 -650 40 {lab=IN2}
N -480 -0 -440 0 {lab=#net4}
N -440 0 -350 0 {lab=#net4}
C {work/LR-hasegawa/LR_hasegawa/LR_Work2/Citizen035/INVERTER_Citizen.sym} -80 0 0 0 {name=x1}
C {work/LR-hasegawa/LR_hasegawa/LR_Work2/Citizen035/INVERTER3_Citizen.sym} 80 0 0 0 {name=x2}
C {work/LR-hasegawa/LR_hasegawa/LR_Work2/Citizen035/INVERTER9_Citizen.sym} 260 0 0 0 {name=x3}
C {work/LR-hasegawa/LR_hasegawa/LR_Work2/Citizen035/INVERTER27_Citizen.sym} 450 0 0 0 {name=x4}
C {.klayout/salt/Citizen035/Technology/tech/symbols/Xschem/Citizen035/code.sym} 350 -230 0 0 {name=s1 only_toplevel=false value=blabla}
C {.klayout/salt/Citizen035/Technology/tech/symbols/Xschem/Citizen035/code_shown.sym} 510 -220 0 0 {name=s2 only_toplevel=false value="

VVDD VDD 0 DC 3.3

VIN1 IN1 0 pulse(0 3.3 100n 1n 1n 100n 200n)
VIN2 IN2 0 pulse(0 3.3 100n 1n 1n 100n 200n)

*Cload Q 0 1p
*Cload XQ 0 1p


.control
tran 1n 1000n

meas TRAN Iavg AVG I(VVDD)

meas TRAN tplh TRIG CLK VAL=1.65 RISE=2 TARG Q VAL=1.65 RISE=1
meas TRAN tphl TRIG CLK VAL=1.65 RISE=3 TARG Q VAL=1.65 FALL=1

set file=sim.log
write "buffer_citizen#1.raw"

.endc"}
C {work/LR-hasegawa/LR_hasegawa/LR_Work2/Citizen035/INVERTER_Citizen.sym} -340 0 0 0 {name=x5}
C {.klayout/salt/Citizen035/Technology/tech/symbols/Xschem/Citizen035/iopin.sym} 450 0 0 0 {name=p1 lab=OUT}
C {.klayout/salt/Citizen035/Technology/tech/symbols/Xschem/Citizen035/iopin.sym} -710 40 0 0 {name=p3 lab=IN2}
C {.klayout/salt/Citizen035/Technology/tech/symbols/Xschem/Citizen035/iopin.sym} -710 -30 0 0 {name=p4 lab=IN1}
C {.klayout/salt/Citizen035/Technology/tech/symbols/Xschem/Citizen035/cap.sym} -610 -40 1 0 {name=C1
m=1
value=1p
footprint=1206
device=ceramic}
C {.klayout/salt/Citizen035/Technology/tech/symbols/Xschem/Citizen035/cap.sym} -610 30 1 0 {name=C2
m=1
value=1p
footprint=1206
device=ceramic}
