v {xschem version=3.4.7RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 800 -80 800 80 {lab=#net1}
N 880 -80 880 80 {lab=OUT}
N 760 -50 760 50 {lab=OUT}
N 920 -50 920 50 {lab=#net1}
N 840 -160 840 -110 {lab=VDD}
N 760 -110 920 -110 {lab=VDD}
N 760 110 920 110 {lab=GND}
N 840 110 840 160 {lab=GND}
N 800 -40 920 0 {lab=#net1}
N 760 0 880 40 {lab=OUT}
N 980 110 980 140 {lab=GND}
N 840 140 980 140 {lab=GND}
N 700 110 700 140 {lab=GND}
N 700 140 840 140 {lab=GND}
N 600 -0 760 0 {lab=OUT}
N 700 0 700 50 {lab=OUT}
N 980 0 980 50 {lab=#net1}
N 660 -110 660 80 {lab=R}
N 1020 -110 1020 80 {lab=R}
N 700 80 720 80 {lab=GND}
N 720 80 720 140 {lab=GND}
N 740 80 760 80 {lab=GND}
N 740 80 740 140 {lab=GND}
N 920 80 940 80 {lab=GND}
N 940 80 940 140 {lab=GND}
N 960 80 980 80 {lab=GND}
N 960 80 960 140 {lab=GND}
N 740 -80 760 -80 {lab=VDD}
N 740 -110 740 -80 {lab=VDD}
N 740 -110 760 -110 {lab=VDD}
N 920 -80 940 -80 {lab=VDD}
N 940 -110 940 -80 {lab=VDD}
N 920 -110 940 -110 {lab=VDD}
N 600 -40 600 -0 {lab=OUT}
N 600 -0 600 40 {lab=OUT}
N 540 -40 540 40 {lab=INA}
N 470 -0 540 0 {lab=INA}
N 570 -40 570 -20 {lab=GND}
N 570 20 570 40 {lab=VDD}
N 570 -100 570 -80 {lab=SW}
N 570 80 570 100 {lab=SWA}
N 1140 -40 1140 0 {lab=INB}
N 1140 0 1140 40 {lab=INB}
N 1080 -40 1080 40 {lab=#net1}
N 1110 -40 1110 -20 {lab=GND}
N 1110 20 1110 40 {lab=VDD}
N 1110 -100 1110 -80 {lab=SW}
N 1110 80 1110 100 {lab=SWA}
N 920 -0 1080 0 {lab=#net1}
N 1140 -0 1200 -0 {lab=INB}
N 820 20 820 270 {lab=OUT}
C {.klayout/salt/OpenRule1um/tech/tech/symbols/Xschem/MinedaLIB/NMOS_MIN.sym} 880 80 0 0 {name=M5 model=nch w=9.7u l=1.94u as=0 ps=0 ad=0 pd=0 m=1}
C {.klayout/salt/OpenRule1um/tech/tech/symbols/Xschem/MinedaLIB/PMOS_MIN.sym} 800 -80 0 1 {name=M6 model=pch w=9.7u l=0.35u as=0 ps=0 ad=0 pd=0 m=1}
C {.klayout/salt/OpenRule1um/tech/tech/symbols/Xschem/MinedaLIB/PMOS_MIN.sym} 880 -80 0 0 {name=M7 model=pch w=9.7u l=0.35u as=0 ps=0 ad=0 pd=0 m=1}
C {.klayout/salt/OpenRule1um/tech/tech/symbols/Xschem/MinedaLIB/NMOS_MIN.sym} 800 80 0 1 {name=M8 model=nch w=9.7u l=1.94u as=0 ps=0 ad=0 pd=0 m=1}
C {opin.sym} 820 270 0 0 {name=p4 lab=OUT}
C {ipin.sym} 1200 0 0 1 {name=p5 lab=INB}
C {vdd.sym} 840 -160 0 0 {name=l4 lab=VDD}
C {gnd.sym} 840 160 0 0 {name=l5 lab=GND}
C {ipin.sym} 470 0 0 0 {name=p6 lab=INA}
C {.klayout/salt/OpenRule1um/tech/tech/symbols/Xschem/MinedaLIB/NMOS_MIN.sym} 1020 80 0 1 {name=M1 model=nch w=9.7u l=1.94u as=0 ps=0 ad=0 pd=0 m=1}
C {.klayout/salt/OpenRule1um/tech/tech/symbols/Xschem/MinedaLIB/NMOS_MIN.sym} 660 80 0 0 {name=M2 model=nch w=9.7u l=1.94u as=0 ps=0 ad=0 pd=0 m=1}
C {ipin.sym} 660 -110 0 0 {name=p1 lab=R}
C {ipin.sym} 1020 -110 0 1 {name=p2 lab=R}
C {.klayout/salt/OpenRule1um/tech/tech/symbols/Xschem/MinedaLIB/NMOS_MIN.sym} 570 -80 1 0 {name=M3 model=nch w=9.7u l=1.94u as=0 ps=0 ad=0 pd=0 m=1}
C {.klayout/salt/OpenRule1um/tech/tech/symbols/Xschem/MinedaLIB/PMOS_MIN.sym} 570 80 1 1 {name=M4 model=pch w=9.7u l=0.35u as=0 ps=0 ad=0 pd=0 m=1}
C {lab_pin.sym} 570 -20 0 0 {name=p3 sig_type=std_logic lab=GND}
C {lab_pin.sym} 570 20 0 0 {name=p7 sig_type=std_logic lab=VDD}
C {ipin.sym} 570 -100 0 0 {name=p8 lab=SW}
C {ipin.sym} 570 100 0 0 {name=p9 lab=SWA}
C {.klayout/salt/OpenRule1um/tech/tech/symbols/Xschem/MinedaLIB/NMOS_MIN.sym} 1110 -80 3 1 {name=M9 model=nch w=9.7u l=1.94u as=0 ps=0 ad=0 pd=0 m=1}
C {.klayout/salt/OpenRule1um/tech/tech/symbols/Xschem/MinedaLIB/PMOS_MIN.sym} 1110 80 3 0 {name=M10 model=pch w=9.7u l=0.35u as=0 ps=0 ad=0 pd=0 m=1}
C {lab_pin.sym} 1110 -20 0 1 {name=p10 sig_type=std_logic lab=GND}
C {lab_pin.sym} 1110 20 0 1 {name=p11 sig_type=std_logic lab=VDD}
C {ipin.sym} 1110 -100 0 1 {name=p12 lab=SW}
C {ipin.sym} 1110 100 0 1 {name=p13 lab=SWA}
C {code_shown.sym} 1290 -140 0 0 {name=comp only_toplevel=false 
value= ".include /home/tororo/pdk/T_mos_model.sp
vina INA 0 pulse(0 3.3 0n 149n 149n 2n 300n)
vinb INB 0 pulse(0 3.3 150n 149n 149n 2n 300n)
vr R 0 pulse(0 3.3 0n 1n 1n 30n 100n)
vsw sw 0 pulse(0 3.3 40n 1n 1n 50n 100n)
vswa swa 0 pulse(0 3.3 90n 1n 1n 50n 100n)
vvdd VDD 0 dc 3.3
.control
tran 10p 900n

save all
write "COMP.raw"
.endc"
}
