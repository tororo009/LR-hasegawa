v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -320 -80 -320 0 {lab=OUT}
N -410 0 -410 20 {lab=OUT}
N -410 50 -400 50 {lab=GND}
N -410 150 -400 150 {lab=GND}
N -320 -160 -320 -145 {lab=VDD}
N -500 -160 -320 -160 {lab=VDD}
N -500 -160 -500 -80 {lab=VDD}
N -320 -145 -320 -140 {lab=VDD}
N -320 -160 -300 -160 {lab=VDD}
N -480 -100 -480 -50 {lab=VDD}
N -500 -100 -480 -100 {lab=VDD}
N -540 -50 -540 150 {lab=IN2}
N -580 -110 -360 -110 {lab=IN1}
N -580 -110 -580 50 {lab=IN1}
N -730 150 -450 150 {lab=IN2}
N -320 -110 -300 -110 {lab=VDD}
N -410 180 -400 180 {lab=GND}
N -400 150 -400 180 {lab=GND}
N -400 50 -400 150 {lab=GND}
N -500 -50 -480 -50 {lab=VDD}
N -410 -190 -410 -160 {lab=VDD}
N -730 50 -450 50 {lab=IN1}
N -410 210 -400 210 {lab=GND}
N -400 180 -400 210 {lab=GND}
N -300 -160 -300 -110 {lab=VDD}
N -410 80 -410 120 {lab=#net1}
N -500 -20 -500 -0 {lab=OUT}
N -500 0 -230 -0 {lab=OUT}
N -230 -0 -220 0 {lab=OUT}
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
C {.klayout/salt/Citizen035/Technology/tech/symbols/Xschem/Citizen035/iopin.sym} -730 150 0 0 {name=p5 lab=IN2}
C {.klayout/salt/Citizen035/Technology/tech/symbols/Xschem/Citizen035/iopin.sym} -730 50 0 0 {name=p6 lab=IN1}
C {vdd.sym} -410 -185 0 0 {name=l2 lab=VDD}
C {gnd.sym} -410 210 0 0 {name=l1 lab=GND}
C {.klayout/salt/Citizen035/Technology/tech/symbols/Xschem/Citizen035/PMOS_MIN.sym} -360 -110 0 0 {name=M8 model=pch w=3.6u l=0.4u as=0 ps=0 ad=0 pd=0 m=1}
C {.klayout/salt/Citizen035/Technology/tech/symbols/Xschem/Citizen035/iopin.sym} -230 0 0 0 {name=p1 lab=OUT}
C {.klayout/salt/Citizen035/Technology/tech/symbols/Xschem/Citizen035/NMOS_MIN.sym} -450 50 0 0 {name=M1 model=nch w=2.4u l=0.4u as=0 ps=0 ad=0 pd=0 m=1}
C {.klayout/salt/Citizen035/Technology/tech/symbols/Xschem/Citizen035/NMOS_MIN.sym} -450 150 0 0 {name=M2 model=nch w=2.4u l=0.4u as=0 ps=0 ad=0 pd=0 m=1}
C {.klayout/salt/Citizen035/Technology/tech/symbols/Xschem/Citizen035/PMOS_MIN.sym} -540 -50 0 0 {name=M3 model=pch w=3.6u l=0.4u as=0 ps=0 ad=0 pd=0 m=1}
