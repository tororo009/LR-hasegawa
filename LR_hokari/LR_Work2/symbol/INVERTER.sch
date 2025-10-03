v {xschem version=3.4.7RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 20 -80 20 80 {lab=IN}
N 60 -50 60 50 {lab=OUT}
N 60 80 80 80 {lab=GND}
N 60 -80 80 -80 {lab=VDD}
N 80 -110 80 -80 {lab=VDD}
N 60 -120 80 -120 {lab=VDD}
N 80 80 80 110 {lab=GND}
N 60 120 80 120 {lab=GND}
N 60 -140 60 -110 {lab=VDD}
N 60 110 60 140 {lab=GND}
N -60 0 20 0 {lab=IN}
N 60 0 140 0 {lab=OUT}
N 80 -120 80 -110 {lab=VDD}
N 80 110 80 120 {lab=GND}
C {PMOS_MIN.sym} 20 -80 0 0 {name=M6 model=pch w=3u l=0.35u as=0 ps=0 ad=0 pd=0 m=1}
C {NMOS_MIN.sym} 20 80 0 0 {name=M8 model=nch w=1u l=0.35u as=0 ps=0 ad=0 pd=0 m=1}
C {vdd.sym} 60 -140 0 1 {name=l4 lab=VDD}
C {gnd.sym} 60 140 0 1 {name=l5 lab=GND}
C {opin.sym} 140 0 0 0 {name=p4 lab=OUT}
C {ipin.sym} -60 0 0 0 {name=p1 lab=IN}
