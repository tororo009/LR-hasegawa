v {xschem version=3.4.7RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -180 100 -140 100 {lab=#net1}
N -180 0 -180 100 {lab=#net1}
N -20 0 -20 100 {lab=#net2}
N -60 100 -20 100 {lab=#net2}
N -380 0 -320 0 {lab=D}
N -440 0 -380 0 {lab=D}
N -230 -0 -140 -0 {lab=#net1}
N -320 -0 -310 -0 {lab=D}
N -50 -0 -20 0 {lab=#net2}
N -290 -30 -270 -30 {lab=#net3}
N -440 100 -400 100 {lab=E}
N -270 30 -270 70 {lab=E}
N -270 70 -100 70 {lab=E}
N -400 70 -270 70 {lab=E}
N -310 130 -100 130 {lab=#net3}
N -400 100 -400 130 {lab=E}
N -400 70 -400 100 {lab=E}
N -300 -30 -300 130 {lab=#net3}
N -300 -30 -290 -30 {lab=#net3}
N 100 0 180 0 {lab=#net4}
N 140 0 140 100 {lab=#net4}
N 140 100 180 100 {lab=#net4}
N 270 0 380 0 {lab=#net5}
N 260 100 300 100 {lab=#net5}
N 300 0 300 100 {lab=#net5}
N 470 -0 540 0 {lab=OUT}
N -100 130 0 130 {lab=#net3}
N -100 70 -0 70 {lab=E}
N 0 70 220 130 {lab=E}
N 0 130 220 70 {lab=#net3}
N 20 -40 20 30 {lab=#net2}
N 80 -40 80 30 {lab=#net4}
N -20 -0 20 -0 {lab=#net2}
N 80 -0 100 0 {lab=#net4}
N 0 70 50 70 {lab=E}
N -300 -80 50 -80 {lab=#net3}
N -300 -80 -300 -30 {lab=#net3}
N 50 10 50 30 {lab=VDD}
N 50 10 110 10 {lab=VDD}
N 50 -40 50 -20 {lab=GND}
C {ipin.sym} -440 0 0 0 {name=p1 lab=D}
C {opin.sym} 540 0 0 0 {name=p4 lab=OUT}
C {ipin.sym} -440 100 0 0 {name=p2 lab=E}
C {code_shown.sym} 220 -320 0 0 {name=INVERTERDFF only_toplevel=false 
value= ".include /home/tororo/LR/T_mos_model.sp
vd D 0 pulse(0 3.3 0n 1n 1n 250n 500n)
ve E 0 pulse(0 3.3 0n 1n 1n 50n 100n)
vvdd VDD 0 dc 3.3
.control
tran 10p 1000n
save all
write "INVERTERDFF.raw"
.endc"
}
C {LR/task_LATCH/INVERTER.sym} -100 0 0 0 {name=X1}
C {LR/task_LATCH/INVERTER.sym} -360 130 0 0 {name=X2}
C {LR/task_LATCH/CLOCKEDINVERTER.sym} -270 0 0 0 {name=X3}
C {LR/task_LATCH/CLOCKEDINVERTER.sym} -100 100 0 1 {name=X4}
C {LR/task_LATCH/INVERTER.sym} 220 0 0 0 {name=X5}
C {LR/task_LATCH/INVERTER.sym} 420 0 0 0 {name=X6}
C {LR/task_LATCH/CLOCKEDINVERTER.sym} 220 100 0 1 {name=X7}
C {.klayout/salt/OpenRule1um/tech/tech/symbols/Xschem/MinedaLIB/PMOS_MIN.sym} 50 70 3 0 {name=M6 model=pch w=10.5u l=0.35u as=0 ps=0 ad=0 pd=0 m=1}
C {.klayout/salt/OpenRule1um/tech/tech/symbols/Xschem/MinedaLIB/NMOS_MIN.sym} 50 -80 1 0 {name=M8 model=nch w=3.5u l=0.35u as=0 ps=0 ad=0 pd=0 m=1}
C {vdd.sym} 110 10 0 1 {name=l4 lab=VDD}
C {gnd.sym} 50 -20 0 1 {name=l5 lab=GND}
