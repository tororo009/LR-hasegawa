v {xschem version=3.4.7RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 420 40 420 120 {lab=GND}
N 240 100 240 120 {lab=GND}
N 330 -180 330 -140 {lab=#net1}
N 330 -80 330 -60 {lab=OUT}
N 330 -210 340 -210 {lab=VDD}
N 330 -110 340 -110 {lab=VDD}
N 420 -40 420 -25 {lab=OUT}
N 240 -40 420 -40 {lab=OUT}
N 240 -40 240 40 {lab=OUT}
N 420 -25 420 -20 {lab=OUT}
N 420 10 440 10 {lab=GND}
N 420 -40 440 -40 {lab=OUT}
N 240 70 260 70 {lab=GND}
N 100 -210 290 -210 {lab=IN1}
N 100 -110 290 -110 {lab=IN2}
N 160 10 380 10 {lab=IN2}
N 240 120 420 120 {lab=GND}
N 330 -60 330 -40 {lab=OUT}
N 330 120 330 140 {lab=GND}
N 260 70 260 120 {lab=GND}
N 440 10 440 60 {lab=GND}
N 420 60 440 60 {lab=GND}
N 440 -40 460 -40 {lab=OUT}
N 330 -250 330 -240 {lab=VDD}
N 330 -280 330 -250 {lab=VDD}
N 330 -260 340 -260 {lab=VDD}
N 340 -260 340 -110 {lab=VDD}
N 200 -210 200 70 {lab=IN1}
N 160 -110 160 10 {lab=IN2}
C {PMOS_MIN.sym} 290 -110 2 1 {name=M1 model=pch w=10.5u l=0.35u as=0 ps=0 ad=0 pd=0 m=1}
C {NMOS_MIN.sym} 200 70 0 0 {name=M2 model=nch w=7u l=0.35u as=0 ps=0 ad=0 pd=0 m=1}
C {PMOS_MIN.sym} 290 -210 2 1 {name=M3 model=pch w=10.5u l=0.35u as=0 ps=0 ad=0 pd=0 m=1}
C {NMOS_MIN.sym} 380 10 0 0 {name=M4 model=nch w=7u l=0.35u as=0 ps=0 ad=0 pd=0 m=1}
C {vdd.sym} 330 -275 0 0 {name=l2 lab=VDD}
C {ipin.sym} 100 -210 0 0 {name=p1 lab=IN1}
C {ipin.sym} 100 -110 0 0 {name=p2 lab=IN2}
C {gnd.sym} 330 140 0 0 {name=l1 lab=GND}
C {opin.sym} 460 -40 0 0 {name=p3 lab=OUT}
