v {xschem version=3.4.7RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 400 -230 400 -210 {lab=VDD}
N 400 -80 420 -80 {lab=VDD}
N 420 -220 420 -80 {lab=VDD}
N 400 -220 420 -220 {lab=VDD}
N 400 -180 420 -180 {lab=VDD}
N 400 -150 400 -110 {lab=#net1}
N 400 110 400 150 {lab=#net2}
N 400 210 400 240 {lab=GND}
N 400 80 420 80 {lab=GND}
N 420 80 420 220 {lab=GND}
N 400 220 420 220 {lab=GND}
N 400 180 420 180 {lab=GND}
N 400 -50 400 50 {lab=OUT}
N 400 -0 480 0 {lab=OUT}
N 340 80 360 80 {lab=IN}
N 340 -80 340 80 {lab=IN}
N 340 -80 360 -80 {lab=IN}
N 280 -180 360 -180 {lab=P}
N 290 180 360 180 {lab=N}
N 280 -0 340 -0 {lab=IN}
C {PMOS_MIN.sym} 360 -80 0 0 {name=M3 model=pch w=10.5u l=0.35u as=0 ps=0 ad=0 pd=0 m=1}
C {NMOS_MIN.sym} 360 80 0 0 {name=M4 model=nch w=3.5u l=0.35u as=0 ps=0 ad=0 pd=0 m=1}
C {vdd.sym} 400 -230 0 1 {name=l1 lab=VDD}
C {gnd.sym} 400 240 0 1 {name=l2 lab=GND}
C {opin.sym} 480 0 0 0 {name=p5 lab=OUT}
C {ipin.sym} 280 0 0 0 {name=p6 lab=IN}
C {ipin.sym} 280 -180 0 0 {name=p7 lab=P}
C {ipin.sym} 290 180 0 0 {name=p8 lab=N}
C {PMOS_MIN.sym} 360 -180 0 0 {name=M5 model=pch w=10.5u l=0.35u as=0 ps=0 ad=0 pd=0 m=1}
C {NMOS_MIN.sym} 360 180 0 0 {name=M7 model=nch w=3.5u l=0.35u as=0 ps=0 ad=0 pd=0 m=1}
