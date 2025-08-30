v {xschem version=3.4.7RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -180 100 -140 100 {lab=#net1}
N -180 0 -180 100 {lab=#net1}
N -20 0 -20 100 {lab=OUT}
N -60 100 -20 100 {lab=OUT}
N -20 -0 40 0 {lab=OUT}
N -380 0 -320 0 {lab=D}
N 40 0 100 0 {lab=OUT}
N -440 0 -380 0 {lab=D}
N -230 -0 -140 -0 {lab=#net1}
N -320 -0 -310 -0 {lab=D}
N -50 -0 -20 0 {lab=OUT}
N -290 -30 -270 -30 {lab=#net2}
N -440 100 -400 100 {lab=E}
N -270 30 -270 70 {lab=E}
N -270 70 -100 70 {lab=E}
N -400 70 -270 70 {lab=E}
N -310 130 -100 130 {lab=#net2}
N -400 100 -400 130 {lab=E}
N -400 70 -400 100 {lab=E}
N -300 -30 -300 130 {lab=#net2}
N -300 -30 -290 -30 {lab=#net2}
C {ipin.sym} -440 0 0 0 {name=p1 lab=D}
C {opin.sym} 100 0 0 0 {name=p4 lab=OUT}
C {ipin.sym} -440 100 0 0 {name=p2 lab=E}
C {code_shown.sym} 190 -60 0 0 {name=INVERTERDLATCH only_toplevel=false 
value= ".include /home/tororo/LR/T_mos_model.sp
vd D 0 pulse(0 3.3 0n 1n 1n 250n 500n)
ve E 0 pulse(0 3.3 0n 1n 1n 50n 100n)
vvdd VDD 0 dc 3.3
.control
tran 10p 1000n
save all
write "INVERTERDLATCH.raw"
.endc"
}
C {LR/task_LATCH/INVERTER.sym} -100 0 0 0 {name=X1}
C {LR/task_LATCH/INVERTER.sym} -360 130 0 0 {name=X2}
C {LR/task_LATCH/CLOCKEDINVERTER.sym} -270 0 0 0 {name=X3}
C {LR/task_LATCH/CLOCKEDINVERTER.sym} -100 100 0 1 {name=X4}
