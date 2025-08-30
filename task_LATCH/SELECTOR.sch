v {xschem version=3.4.7RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 80 -80 80 -40 {lab=#net1}
N 80 -40 170 -40 {lab=#net1}
N 80 40 80 80 {lab=#net2}
N 80 40 170 40 {lab=#net2}
N -180 -40 -160 -40 {lab=#net3}
N -360 -40 -270 -40 {lab=EN}
N -320 -40 -320 120 {lab=EN}
N -360 40 -160 40 {lab=IN2}
N -360 -120 -160 -120 {lab=IN1}
N 410 -0 460 0 {lab=OUT}
N -320 120 -270 120 {lab=EN}
N -180 120 -160 120 {lab=EN}
N -270 120 -180 120 {lab=EN}
C {LR/task_LATCH/2NANDLR.sym} -80 80 0 0 {name=X1}
C {LR/task_LATCH/2NANDLR.sym} -80 -80 0 0 {name=X2}
C {LR/task_LATCH/2NANDLR.sym} 250 0 0 0 {name=X3}
C {LR/task_LATCH/INVERTER.sym} -230 -40 0 0 {name=X4}
C {ipin.sym} -360 -40 0 0 {name=p1 lab=EN}
C {ipin.sym} -360 40 0 0 {name=p2 lab=IN2}
C {ipin.sym} -360 -120 0 0 {name=p3 lab=IN1}
C {opin.sym} 460 0 0 0 {name=p4 lab=OUT}
