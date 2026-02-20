v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -120 -10 -50 -10 {lab=IN1}
N -120 10 -50 10 {lab=IN2}
N 40 -0 90 -0 {lab=OUT}
C {.klayout/salt/Citizen035/Technology/tech/symbols/Xschem/Citizen035/opin.sym} 90 0 0 0 {name=p1 lab=OUT}
C {.klayout/salt/Citizen035/Technology/tech/symbols/Xschem/Citizen035/ipin.sym} -120 -10 0 0 {name=p2 lab=IN1}
C {.klayout/salt/Citizen035/Technology/tech/symbols/Xschem/Citizen035/ipin.sym} -120 10 0 0 {name=p3 lab=IN2}
C {.klayout/salt/Citizen035/Technology/tech/symbols/Xschem/Citizen035/code.sym} 150 -160 0 0 {name=s1 only_toplevel=false value=blabla}
C {.klayout/salt/Citizen035/Technology/tech/symbols/Xschem/Citizen035/code_shown.sym} 290 -150 0 0 {name=s2 only_toplevel=false value="

VVDD VDD 0 DC 3.3
VGND GND 0 DC 0

VIN IN1 0 pulse(0 3.3 100n 1n 1n 100n 200n)
VIN IN2 0 pulse(0 3.3 50n 1n 1n 100n 200n)

.control
tran 1n 1000n

meas TRAN Iavg AVG I(VVDD)

set file=sim.log
write "NAND2TEST_Citizen.raw"

.endc"}
C {work/LR-hasegawa/LR_hasegawa/LR_Work2/Citizen035/NAND2_Citizen.sym} 100 0 0 0 {name=x1}
