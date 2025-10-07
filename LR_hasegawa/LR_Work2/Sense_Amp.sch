v {xschem version=3.4.7RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 300 -180 300 -100 {lab=#net1}
N 460 -180 460 -100 {lab=#net2}
N 460 -320 660 -320 {lab=CLK}
N 80 -320 300 -320 {lab=INP}
N 300 -320 300 -240 {lab=INP}
N 460 -320 460 -240 {lab=CLK}
N 300 -400 300 -380 {lab=VDD}
N 460 -400 460 -380 {lab=VDD}
N 460 -350 560 -350 {lab=VDD}
N 200 -350 300 -350 {lab=VDD}
N 250 -390 250 -350 {lab=VDD}
N 200 -390 300 -390 {lab=VDD}
N 460 -390 560 -390 {lab=VDD}
N 510 -390 510 -350 {lab=VDD}
N 560 -390 560 -380 {lab=VDD}
N 200 -390 200 -380 {lab=VDD}
N 300 -300 400 -300 {lab=INP}
N 400 -350 400 -300 {lab=INP}
N 400 -350 420 -350 {lab=INP}
N 340 -350 360 -350 {lab=CLK}
N 360 -350 360 -280 {lab=CLK}
N 360 -280 460 -280 {lab=CLK}
N 400 -70 420 -70 {lab=INP}
N 340 -70 360 -70 {lab=CLK}
N 400 -300 400 -70 {lab=INP}
N 360 -280 360 -70 {lab=CLK}
N 420 -210 420 -160 {lab=CLK}
N 180 -160 420 -160 {lab=CLK}
N 420 -160 600 -160 {lab=CLK}
N 600 -350 600 -160 {lab=CLK}
N 160 -350 160 -160 {lab=CLK}
N 160 -160 180 -160 {lab=CLK}
N 80 -160 160 -160 {lab=CLK}
N 280 -70 300 -70 {lab=GND}
N 460 -210 480 -210 {lab=GND}
N 460 -70 480 -70 {lab=GND}
N 340 -210 340 -160 {lab=CLK}
N 280 -210 300 -210 {lab=GND}
N 280 -210 280 -120 {lab=GND}
N 280 -20 480 -20 {lab=GND}
N 460 -40 460 -20 {lab=GND}
N 300 -40 300 -20 {lab=GND}
N 280 -120 280 -20 {lab=GND}
N 480 -210 480 -20 {lab=GND}
N 380 -20 380 0 {lab=GND}
C {.klayout/salt/OpenRule1um/tech/tech/symbols/Xschem/MinedaLIB/NMOS_MIN.sym} 340 -210 2 0 {name=M4 model=nch w=3.5u l=0.35u as=0 ps=0 ad=0 pd=0 m=1}
C {.klayout/salt/OpenRule1um/tech/tech/symbols/Xschem/MinedaLIB/PMOS_MIN.sym} 340 -350 2 0 {name=M1 model=pch w=3u l=0.35u as=0 ps=0 ad=0 pd=0 m=1}
C {.klayout/salt/OpenRule1um/tech/tech/symbols/Xschem/MinedaLIB/PMOS_MIN.sym} 160 -350 0 0 {name=M2 model=pch w=3u l=0.35u as=0 ps=0 ad=0 pd=0 m=1}
C {.klayout/salt/OpenRule1um/tech/tech/symbols/Xschem/MinedaLIB/PMOS_MIN.sym} 600 -350 2 0 {name=M3 model=pch w=3u l=0.35u as=0 ps=0 ad=0 pd=0 m=1}
C {.klayout/salt/OpenRule1um/tech/tech/symbols/Xschem/MinedaLIB/PMOS_MIN.sym} 420 -350 0 0 {name=M5 model=pch w=3u l=0.35u as=0 ps=0 ad=0 pd=0 m=1}
C {.klayout/salt/OpenRule1um/tech/tech/symbols/Xschem/MinedaLIB/NMOS_MIN.sym} 420 -210 0 0 {name=M6 model=nch w=3.5u l=0.35u as=0 ps=0 ad=0 pd=0 m=1}
C {.klayout/salt/OpenRule1um/tech/tech/symbols/Xschem/MinedaLIB/NMOS_MIN.sym} 420 -70 0 0 {name=M7 model=nch w=3.5u l=0.35u as=0 ps=0 ad=0 pd=0 m=1}
C {.klayout/salt/OpenRule1um/tech/tech/symbols/Xschem/MinedaLIB/NMOS_MIN.sym} 340 -70 2 0 {name=M8 model=nch w=3.5u l=0.35u as=0 ps=0 ad=0 pd=0 m=1}
C {vdd.sym} 300 -400 0 0 {name=l2 lab=VDD}
C {vdd.sym} 460 -400 0 0 {name=l3 lab=VDD}
C {gnd.sym} 380 0 0 0 {name=l1 lab=GND}
C {ipin.sym} 80 -160 0 0 {name=p1 lab=CLK}
C {ipin.sym} 80 -320 0 0 {name=p2 lab=INP}
C {ipin.sym} 660 -320 2 0 {name=p3 lab=INM}
