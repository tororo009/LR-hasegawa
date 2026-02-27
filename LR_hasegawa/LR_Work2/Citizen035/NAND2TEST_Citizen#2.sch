v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 160 220 160 260 {lab=GND}
N 160 120 160 160 {lab=#net1}
N 160 90 190 90 {lab=GND}
N 190 90 190 190 {lab=GND}
N 160 190 190 190 {lab=GND}
N 160 240 190 240 {lab=GND}
N 190 190 190 240 {lab=GND}
N -120 90 120 90 {lab=IN1}
N -120 190 120 190 {lab=IN2}
N -90 -120 -90 90 {lab=IN1}
N 30 -120 30 190 {lab=IN2}
N -50 -90 70 -90 {lab=OUT}
N -0 -90 -0 -0 {lab=OUT}
N -50 -150 70 -150 {lab=#net2}
N 10 -190 10 -150 {lab=#net2}
N -50 -120 -30 -120 {lab=#net2}
N -30 -150 -30 -120 {lab=#net2}
N 70 -120 100 -120 {lab=#net2}
N 100 -150 100 -120 {lab=#net2}
N 70 -150 100 -150 {lab=#net2}
N 160 0 160 60 {lab=OUT}
N -0 -0 240 -0 {lab=OUT}
N -180 -190 10 -190 {lab=#net2}
N -180 -140 -180 250 {lab=GND}
N -180 250 160 250 {lab=GND}
C {.klayout/salt/Citizen035/Technology/tech/symbols/Xschem/Citizen035/NMOS_MIN.sym} 120 190 0 0 {name=M1 model=nch w=2.4u l=0.4u as=0 ps=0 ad=0 pd=0 m=1}
C {.klayout/salt/Citizen035/Technology/tech/symbols/Xschem/Citizen035/NMOS_MIN.sym} 120 90 0 0 {name=M2 model=nch w=2.4u l=0.4u as=0 ps=0 ad=0 pd=0 m=1}
C {.klayout/salt/Citizen035/Technology/tech/symbols/Xschem/Citizen035/PMOS_MIN.sym} -90 -120 0 0 {name=M3 model=pch w=3.6u l=0.4u as=0 ps=0 ad=0 pd=0 m=1}
C {.klayout/salt/Citizen035/Technology/tech/symbols/Xschem/Citizen035/PMOS_MIN.sym} 30 -120 0 0 {name=M4 model=pch w=3.6u l=0.4u as=0 ps=0 ad=0 pd=0 m=1}
C {.klayout/salt/Citizen035/Technology/tech/symbols/Xschem/Citizen035/gnd.sym} 160 260 0 0 {name=l2 lab=GND}
C {.klayout/salt/Citizen035/Technology/tech/symbols/Xschem/Citizen035/code.sym} 250 -220 0 0 {name=s1 only_toplevel=false value=blabla}
C {.klayout/salt/Citizen035/Technology/tech/symbols/Xschem/Citizen035/code_shown.sym} 390 -210 0 0 {name=s2 only_toplevel=false value="

VVDD VDD 0 DC 5
VGND GND 0 DC 0

VIN IN1 0 pulse(0 3.3 100n 1n 1n 100n 200n)
VIN IN2 0 pulse(0 3.3 50n 1n 1n 100n 200n)

.control
tran 1n 1000n

meas TRAN Iavg AVG I(VVDD)

set file=sim.log
write "NAND2TEST_Citizen#2.raw"

.endc"}
C {.klayout/salt/Citizen035/Technology/tech/symbols/Xschem/Citizen035/iopin.sym} 240 0 0 0 {name=p3 lab=OUT}
C {.klayout/salt/Citizen035/Technology/tech/symbols/Xschem/Citizen035/voltage.sym} -180 -200 0 0 {name=VDD value=5}
C {.klayout/salt/Citizen035/Technology/tech/symbols/Xschem/Citizen035/iopin.sym} -120 90 0 0 {name=p1 lab=IN1}
C {.klayout/salt/Citizen035/Technology/tech/symbols/Xschem/Citizen035/iopin.sym} -120 190 0 0 {name=p2 lab=IN2}
