v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 20 -80 20 80 {lab=IN}
N 60 -50 60 50 {lab=out}
N 60 80 80 80 {lab=GND}
N 60 -80 80 -80 {lab=VDD}
N 80 -110 80 -80 {lab=VDD}
N 60 -120 80 -120 {lab=VDD}
N 80 80 80 110 {lab=GND}
N 60 120 80 120 {lab=GND}
N 60 -140 60 -110 {lab=VDD}
N 60 110 60 140 {lab=GND}
N -60 0 20 0 {lab=IN}
N 60 0 140 0 {lab=out}
N 80 -120 80 -110 {lab=VDD}
N 80 110 80 120 {lab=GND}
C {vdd.sym} 60 -140 0 1 {name=l4 lab=VDD}
C {gnd.sym} 60 140 0 1 {name=l5 lab=GND}
C {.klayout/salt/Citizen035/Technology/tech/symbols/Xschem/Citizen035/NMOS_MIN.sym} 20 80 0 0 {name=M1 model=nch w=1.2u l=0.4u as=0 ps=0 ad=0 pd=0 m=27}
C {.klayout/salt/Citizen035/Technology/tech/symbols/Xschem/Citizen035/PMOS_MIN.sym} 20 -80 0 0 {name=M2 model=pch w=3.6u l=0.4u as=0 ps=0 ad=0 pd=0 m=27}
C {.klayout/salt/Citizen035/Technology/tech/symbols/Xschem/Citizen035/iopin.sym} -60 0 0 0 {name=p1 lab=IN}
C {.klayout/salt/Citizen035/Technology/tech/symbols/Xschem/Citizen035/iopin.sym} 140 0 0 0 {name=p2 lab=OUT}
