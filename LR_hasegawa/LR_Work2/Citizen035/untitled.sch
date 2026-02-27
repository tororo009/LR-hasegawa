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
N -0 -0 250 0 {lab=OUT}
N -50 -150 70 -150 {lab=VDD}
N 10 -190 10 -150 {lab=VDD}
N -50 -120 -30 -120 {lab=VDD}
N -30 -150 -30 -120 {lab=VDD}
N 70 -120 100 -120 {lab=VDD}
N 100 -150 100 -120 {lab=VDD}
N 70 -150 100 -150 {lab=VDD}
N 160 0 160 60 {lab=OUT}
C {.klayout/salt/Citizen035/Technology/tech/symbols/Xschem/Citizen035/NMOS_MIN.sym} 120 190 0 0 {name=M1 model=nch w=2.4u l=0.4u as=0 ps=0 ad=0 pd=0 m=1}
C {.klayout/salt/Citizen035/Technology/tech/symbols/Xschem/Citizen035/NMOS_MIN.sym} 120 90 0 0 {name=M2 model=nch w=2.4u l=0.4u as=0 ps=0 ad=0 pd=0 m=1}
C {.klayout/salt/Citizen035/Technology/tech/symbols/Xschem/Citizen035/PMOS_MIN.sym} -90 -120 0 0 {name=M3 model=pch w=3.6u l=0.4u as=0 ps=0 ad=0 pd=0 m=1}
C {.klayout/salt/Citizen035/Technology/tech/symbols/Xschem/Citizen035/PMOS_MIN.sym} 30 -120 0 0 {name=M4 model=pch w=3.6u l=0.4u as=0 ps=0 ad=0 pd=0 m=1}
C {vdd.sym} 10 -190 0 0 {name=l1 lab=VDD}
C {.klayout/salt/Citizen035/Technology/tech/symbols/Xschem/Citizen035/ipin.sym} -110 90 0 0 {name=p1 lab=IN1}
C {.klayout/salt/Citizen035/Technology/tech/symbols/Xschem/Citizen035/ipin.sym} -110 190 0 0 {name=p2 lab=IN2}
C {.klayout/salt/Citizen035/Technology/tech/symbols/Xschem/Citizen035/opin.sym} 240 0 0 0 {name=p3 lab=OUT}
C {.klayout/salt/Citizen035/Technology/tech/symbols/Xschem/Citizen035/gnd.sym} 160 260 0 0 {name=l2 lab=GND}
