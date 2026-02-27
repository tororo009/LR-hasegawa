v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 240 -260 500 -260 {lab=OUT}
N 420 -340 420 -260 {lab=OUT}
N 240 -280 240 -260 {lab=OUT}
N 330 -260 330 -240 {lab=OUT}
N 330 -180 330 -140 {lab=#net1}
N 330 -80 330 -60 {lab=GND}
N 330 -210 340 -210 {lab=GND}
N 340 -210 340 -70 {lab=GND}
N 330 -70 340 -70 {lab=GND}
N 330 -110 340 -110 {lab=GND}
N 420 -420 420 -405 {lab=VDD}
N 240 -420 420 -420 {lab=VDD}
N 240 -420 240 -340 {lab=VDD}
N 330 -445 330 -420 {lab=VDD}
N 420 -405 420 -400 {lab=VDD}
N 420 -370 440 -370 {lab=VDD}
N 440 -420 440 -370 {lab=VDD}
N 420 -420 440 -420 {lab=VDD}
N 240 -310 260 -310 {lab=VDD}
N 260 -360 260 -310 {lab=VDD}
N 240 -360 260 -360 {lab=VDD}
N 100 -210 290 -210 {lab=IN1}
N 100 -110 290 -110 {lab=IN2}
N 200 -310 200 -110 {lab=IN2}
N 160 -370 380 -370 {lab=IN1}
N 160 -370 160 -210 {lab=IN1}
N 90 -210 100 -210 {lab=IN1}
N 90 -110 100 -110 {lab=IN2}
C {vdd.sym} 330 -445 0 0 {name=l2 lab=VDD}
C {gnd.sym} 330 -60 0 0 {name=l1 lab=GND}
C {.klayout/salt/Citizen035/Technology/tech/symbols/Xschem/Citizen035/NMOS_MIN.sym} 290 -110 0 0 {name=M5 model=nch w=2.4u l=0.4u as=0 ps=0 ad=0 pd=0 m=1}
C {.klayout/salt/Citizen035/Technology/tech/symbols/Xschem/Citizen035/NMOS_MIN.sym} 290 -210 0 0 {name=M6 model=nch w=2.4u l=0.4u as=0 ps=0 ad=0 pd=0 m=1}
C {.klayout/salt/Citizen035/Technology/tech/symbols/Xschem/Citizen035/PMOS_MIN.sym} 200 -310 0 0 {name=M7 model=pch w=3.6u l=0.4u as=0 ps=0 ad=0 pd=0 m=1}
C {.klayout/salt/Citizen035/Technology/tech/symbols/Xschem/Citizen035/PMOS_MIN.sym} 380 -370 0 0 {name=M8 model=pch w=3.6u l=0.4u as=0 ps=0 ad=0 pd=0 m=1}
C {.klayout/salt/Citizen035/Technology/tech/symbols/Xschem/Citizen035/iopin.sym} 500 -260 0 0 {name=p4 lab=OUT}
C {.klayout/salt/Citizen035/Technology/tech/symbols/Xschem/Citizen035/iopin.sym} 90 -210 0 0 {name=p5 lab=IN1}
C {.klayout/salt/Citizen035/Technology/tech/symbols/Xschem/Citizen035/iopin.sym} 90 -110 0 0 {name=p6 lab=IN2}
