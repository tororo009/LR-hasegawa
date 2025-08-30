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
N -60 0 20 0 {lab=IN}
N 60 0 140 0 {lab=OUT}
N 60 -150 60 -110 {lab=#net1}
N 60 -180 80 -180 {lab=VDD}
N 80 -180 80 -110 {lab=VDD}
N 60 -230 60 -220 {lab=VDD}
N 60 -220 60 -210 {lab=VDD}
N 60 -210 80 -210 {lab=VDD}
N 80 -210 80 -180 {lab=VDD}
N -60 -180 20 -180 {lab=P}
N 60 110 60 150 {lab=#net2}
N 80 80 80 180 {lab=GND}
N 60 180 80 180 {lab=GND}
N 60 210 60 240 {lab=GND}
N 60 210 80 210 {lab=GND}
N 80 180 80 210 {lab=GND}
N -50 180 20 180 {lab=N}
C {.klayout/salt/OpenRule1um/tech/tech/symbols/Xschem/MinedaLIB/PMOS_MIN.sym} 20 -80 0 0 {name=M6 model=pch w=10.5u l=0.35u as=0 ps=0 ad=0 pd=0 m=1}
C {.klayout/salt/OpenRule1um/tech/tech/symbols/Xschem/MinedaLIB/NMOS_MIN.sym} 20 80 0 0 {name=M8 model=nch w=3.5u l=0.35u as=0 ps=0 ad=0 pd=0 m=1}
C {vdd.sym} 60 -230 0 1 {name=l4 lab=VDD}
C {gnd.sym} 60 240 0 1 {name=l5 lab=GND}
C {opin.sym} 140 0 0 0 {name=p4 lab=OUT}
C {ipin.sym} -60 0 0 0 {name=p1 lab=IN}
C {ipin.sym} -60 -180 0 0 {name=p2 lab=P}
C {ipin.sym} -50 180 0 0 {name=p3 lab=N}
C {.klayout/salt/OpenRule1um/tech/tech/symbols/Xschem/MinedaLIB/PMOS_MIN.sym} 20 -180 0 0 {name=M1 model=pch w=10.5u l=0.35u as=0 ps=0 ad=0 pd=0 m=1}
C {.klayout/salt/OpenRule1um/tech/tech/symbols/Xschem/MinedaLIB/NMOS_MIN.sym} 20 180 0 0 {name=M2 model=nch w=3.5u l=0.35u as=0 ps=0 ad=0 pd=0 m=1}
