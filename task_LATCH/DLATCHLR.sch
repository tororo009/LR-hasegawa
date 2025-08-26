v {xschem version=3.4.7RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 140 -160 260 -160 {lab=#net1}
N 140 160 260 160 {lab=#net2}
N -240 200 -100 200 {lab=E}
N -220 -120 -100 -120 {lab=E}
N -220 -120 -220 200 {lab=E}
N -240 -200 -100 -200 {lab=D}
N -140 120 -100 120 {lab=#net1}
N -140 80 -140 120 {lab=#net1}
N -140 80 160 -120 {lab=#net1}
N 160 -160 160 -120 {lab=#net1}
N 500 120 620 120 {lab=AQ}
N 500 -120 620 -120 {lab=Q}
N 260 -80 260 -40 {lab=AQ}
N 260 -40 520 80 {lab=AQ}
N 520 80 520 120 {lab=AQ}
N 260 40 260 80 {lab=Q}
N 260 40 520 -80 {lab=Q}
N 520 -120 520 -80 {lab=Q}
C {code_shown.sym} 720 -100 0 0 {name=DLATCHLR only_toplevel=false 
value= ".include /home/tororo/LR/T_mos_model.sp
vd D 0 pulse(0 3.3 0n 1n 1n 250n 500n)
ve E 0 pulse(0 3.3 0n 1n 1n 50n 100n)
vvdd VDD 0 dc 3.3
.control
tran 10p 1000n
save all
write "DLATCHLR.raw"
.endc"
}
C {ipin.sym} -240 -200 0 0 {name=p5 lab=D}
C {ipin.sym} -240 200 0 0 {name=p3 lab=E}
C {opin.sym} 620 -120 0 0 {name=p4 lab=Q}
C {opin.sym} 620 120 0 0 {name=p1 lab=AQ}
C {LR/2NANDLR.sym} -20 -160 0 0 {name=X1}
C {LR/2NANDLR.sym} 340 -120 0 0 {name=X2}
C {LR/2NANDLR.sym} -20 160 0 0 {name=X3}
C {LR/2NANDLR.sym} 340 120 0 0 {name=X4}
