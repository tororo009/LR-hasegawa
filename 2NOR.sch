v {xschem version=3.4.7RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 160 60 160 110 {lab=OUT}
N 120 -120 120 30 {lab=A}
N -40 -120 -40 140 {lab=B}
N 160 0 320 0 {lab=OUT}
N 250 0 250 40 {lab=OUT}
N -110 -0 -40 0 {lab=B}
N 160 -180 160 -150 {lab=#net1}
N 160 170 160 210 {lab=GND}
N 250 100 250 140 {lab=GND}
N -110 -60 120 -60 {lab=A}
N 0 110 160 110 {lab=OUT}
N -0 170 160 170 {lab=GND}
N 120 30 120 140 {lab=A}
N 160 -0 160 60 {lab=OUT}
N 160 -90 160 0 {lab=OUT}
N 160 -300 160 -240 {lab=VDD}
N -40 -210 120 -210 {lab=B}
N -40 -210 -40 -120 {lab=B}
C {.klayout/salt/OpenRule1um/tech/tech/symbols/Xschem/MinedaLIB/NMOS_MIN.sym} 120 140 0 0 {name=M1 model=nch w=9.7u l=1.94u as=0 ps=0 ad=0 pd=0 m=1}
C {.klayout/salt/OpenRule1um/tech/tech/symbols/Xschem/MinedaLIB/PMOS_MIN.sym} 120 -210 0 0 {name=M2 model=pch w=9.7u l=0.35u as=0 ps=0 ad=0 pd=0 m=1}
C {.klayout/salt/OpenRule1um/tech/tech/symbols/Xschem/MinedaLIB/PMOS_MIN.sym} 120 -120 0 0 {name=M3 model=pch w=9.7u l=0.35u as=0 ps=0 ad=0 pd=0 m=1}
C {.klayout/salt/OpenRule1um/tech/tech/symbols/Xschem/MinedaLIB/NMOS_MIN.sym} -40 140 0 0 {name=M4 model=nch w=9.7u l=1.94u as=0 ps=0 ad=0 pd=0 m=1}
C {.klayout/salt/OpenRule1um/tech/tech/symbols/Xschem/MinedaLIB/CAP_MIN.sym} 250 40 0 0 {name=C1
m=1
value=10f
footprint=1206
device=ceramic}
C {/usr/local/share/xschem/xschem_library/devices/opin.sym} 320 0 0 0 {name=p2 lab=OUT}
C {/usr/local/share/xschem/xschem_library/devices/ipin.sym} -110 0 0 0 {name=p1 lab=B}
C {/usr/local/share/xschem/xschem_library/devices/vdd.sym} 160 -300 0 0 {name=l1 lab=VDD}
C {/usr/local/share/xschem/xschem_library/devices/gnd.sym} 160 210 0 0 {name=l2 lab=GND}
C {/usr/local/share/xschem/xschem_library/devices/gnd.sym} 250 140 0 0 {name=l3 lab=GND}
C {/usr/local/share/xschem/xschem_library/devices/ipin.sym} -110 -60 0 0 {name=p3 lab=A}
C {/usr/local/share/xschem/xschem_library/devices/code_shown.sym} 410 -180 0 0 {name=2NOR only_toplevel=false 
value= ".include /home/tororo/pdk/T_mos_model.sp
va A 0 pulse(0 1.8 0n 100p 100p 5n 10n)
vb B 0 pulse(0 1.8 5n 100p 100p 5n 10n)
vvdd VDD 0 dc 1.8
.control
tran 10p 20n
save all
measure TRAN tplh TRIG V(Y) VAL=0.9 RISE=1 TARG V(Y) VAL=1.62 RISE=1
measure TRAN tphl TRIG V(Y) VAL=1.62 FALL=1 TARG V(Y) VAL=0.9 FALL=1
measure TRAN Iavg AVG I(VDD)
write "2NAND.raw"
.endc"}
