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
N 250 -40 250 -0 {lab=OUT}
N -110 -0 -40 0 {lab=B}
N 160 -180 160 -150 {lab=VDD}
N 160 170 160 210 {lab=GND}
N 250 60 250 100 {lab=GND}
N -110 -60 120 -60 {lab=A}
C {.klayout/salt/OpenRule1um/tech/tech/symbols/Xschem/MinedaLIB/NMOS_MIN.sym} 120 30 0 0 {name=M1 model=nch w=7.0u l=0.35u as=0 ps=0 ad=0 pd=0 m=1}
C {.klayout/salt/OpenRule1um/tech/tech/symbols/Xschem/MinedaLIB/PMOS_MIN.sym} -40 -120 0 0 {name=M2 model=pch w=9.7u l=0.35u as=0 ps=0 ad=0 pd=0 m=1}
C {.klayout/salt/OpenRule1um/tech/tech/symbols/Xschem/MinedaLIB/PMOS_MIN.sym} 120 -120 0 0 {name=M3 model=pch w=9.7u l=0.35u as=0 ps=0 ad=0 pd=0 m=1}
C {.klayout/salt/OpenRule1um/tech/tech/symbols/Xschem/MinedaLIB/NMOS_MIN.sym} 120 140 0 0 {name=M4 model=nch w=7.0u l=0.35u as=0 ps=0 ad=0 pd=0 m=1}
C {.klayout/salt/OpenRule1um/tech/tech/symbols/Xschem/MinedaLIB/CAP_MIN.sym} 250 0 0 0 {name=C1
m=1
value=10f
footprint=1206
device=ceramic}
C {opin.sym} 320 -40 0 0 {name=p2 lab=OUT}
C {ipin.sym} -110 0 0 0 {name=p1 lab=B}
C {vdd.sym} 160 -180 0 0 {name=l1 lab=VDD}
C {gnd.sym} 160 210 0 0 {name=l2 lab=GND}
C {gnd.sym} 250 100 0 0 {name=l3 lab=GND}
C {ipin.sym} -110 -60 0 0 {name=p3 lab=A}
C {code_shown.sym} 410 -190 0 0 {name=2NAND only_toplevel=false 
value= ".include /home/tororo/pdk/T_mos_model.sp
va A 0 pulse(0 1.8 0n 1n 1n 50n 100n)
vb B 0 pulse(0 1.8 0n 1n 1n 100n 200n)
VVDD VDD 0 dc 1.8
.control
tran 10p 400n
meas TRAN tplh TRIG A VAL=0.9 RISE=1 TARG OUT VAL=0.9 FALL=1
meas TRAN tphl TRIG A VAL=0.9 FALL=1 TARG OUT VAL=0.9 RISE=1
meas TRAN Iavg AVG I(VVDD)
save all
write "2NAND.raw"
.endc"
}
