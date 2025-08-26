v {xschem version=3.4.7RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -120 -40 -70 -40 {lab=A}
N -120 40 -70 40 {lab=B}
N 170 0 220 0 {lab=OUT}
C {LR/2NANDLR.sym} 10 0 0 0 {name=X1}
C {ipin.sym} -120 -40 0 0 {name=p1 lab=A}
C {ipin.sym} -120 40 0 0 {name=p2 lab=B}
C {opin.sym} 220 0 0 0 {name=p3 lab=OUT}
C {code_shown.sym} 290 -70 0 0 {name=2NANDTEST only_toplevel=false 
value= ".include /home/tororo/pdk/T_mos_model.sp
va A 0 pulse(0 3.3 0n 1n 1n 250n 500n)
vb B 0 pulse(0 3.3 0n 1n 1n 50n 100n)
vvdd VDD 0 dc 3.3
.control
tran 10p 1000n
save all
write "2NANDTEST.raw"
.endc"
}
