v {xschem version=3.4.7RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 0 -150 160 -150 {lab=VDD}
N 0 -90 160 -90 {lab=OUT}
N 160 -90 160 -0 {lab=OUT}
N 160 60 160 110 {lab=#net1}
N 120 -120 120 30 {lab=A}
N -40 -120 -40 140 {lab=B}
N -40 140 120 140 {lab=B}
N 160 -40 320 -40 {lab=OUT}
N -110 -0 -40 0 {lab=B}
N 160 -180 160 -150 {lab=VDD}
N 160 170 160 210 {lab=GND}
N -110 -60 120 -60 {lab=A}
N 160 140 200 140 {lab=GND}
N 200 140 200 180 {lab=GND}
N 160 180 200 180 {lab=GND}
N 160 30 200 30 {lab=GND}
N 200 30 200 140 {lab=GND}
N 0 -120 20 -120 {lab=VDD}
N 20 -150 20 -120 {lab=VDD}
N 160 -120 180 -120 {lab=VDD}
N 180 -150 180 -120 {lab=VDD}
N 160 -150 180 -150 {lab=VDD}
C {.klayout/salt/OpenRule1um/tech/tech/symbols/Xschem/MinedaLIB/NMOS_MIN.sym} 120 30 0 0 {name=M1 model=nch w=3.5u l=3.5u as=0 ps=0 ad=0 pd=0 m=1}
C {.klayout/salt/OpenRule1um/tech/tech/symbols/Xschem/MinedaLIB/PMOS_MIN.sym} -40 -120 0 0 {name=M2 model=pch w=10.5u l=3.5u as=0 ps=0 ad=0 pd=0 m=1}
C {.klayout/salt/OpenRule1um/tech/tech/symbols/Xschem/MinedaLIB/PMOS_MIN.sym} 120 -120 0 0 {name=M3 model=pch w=10.5u l=3.5u as=0 ps=0 ad=0 pd=0 m=1}
C {.klayout/salt/OpenRule1um/tech/tech/symbols/Xschem/MinedaLIB/NMOS_MIN.sym} 120 140 0 0 {name=M4 model=nch w=3.5u l=10.5u as=0 ps=0 ad=0 pd=0 m=1}
C {vdd.sym} 160 -180 0 0 {name=l1 lab=VDD}
C {gnd.sym} 160 210 0 0 {name=l2 lab=GND}
C {ipin.sym} -110 -60 0 0 {name=p2 lab=A}
C {ipin.sym} -110 0 0 0 {name=p1 lab=B}
C {opin.sym} 320 -40 0 0 {name=p4 lab=OUT}
