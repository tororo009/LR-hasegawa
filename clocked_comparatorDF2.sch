v {xschem version=3.4.7RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 240 -300 240 -220 {lab=#net1}
N 400 -300 400 -220 {lab=#net2}
N 400 -440 500 -440 {lab=#net3}
N 140 -440 240 -440 {lab=#net4}
N 240 -400 240 -360 {lab=#net4}
N 400 -420 400 -360 {lab=#net3}
N 240 -510 240 -500 {lab=VDD}
N 400 -510 400 -500 {lab=VDD}
N 450 -470 500 -470 {lab=VDD}
N 190 -470 240 -470 {lab=VDD}
N 190 -510 190 -470 {lab=VDD}
N 190 -510 240 -510 {lab=VDD}
N 450 -510 500 -510 {lab=VDD}
N 450 -510 450 -470 {lab=VDD}
N 500 -510 500 -500 {lab=VDD}
N 140 -510 140 -500 {lab=VDD}
N 340 -470 360 -470 {lab=#net4}
N 280 -470 300 -470 {lab=#net3}
N 300 -420 400 -420 {lab=#net3}
N 340 -190 360 -190 {lab=#net4}
N 280 -190 300 -190 {lab=#net3}
N 360 -330 360 -280 {lab=CLK}
N 280 -280 360 -280 {lab=CLK}
N 360 -280 540 -280 {lab=CLK}
N 540 -470 540 -280 {lab=CLK}
N 100 -470 100 -280 {lab=CLK}
N 100 -280 280 -280 {lab=CLK}
N 20 -280 100 -280 {lab=CLK}
N 220 -190 240 -190 {lab=GND}
N 400 -330 420 -330 {lab=GND}
N 400 -190 420 -190 {lab=GND}
N 280 -330 280 -280 {lab=CLK}
N 220 -330 240 -330 {lab=GND}
N 220 -330 220 -190 {lab=GND}
N 220 -190 220 -140 {lab=GND}
N 420 -190 420 -140 {lab=GND}
N 220 -140 260 -140 {lab=GND}
N 260 -90 260 -40 {lab=GND}
N 380 -40 400 -40 {lab=GND}
N 400 -60 400 -40 {lab=GND}
N 380 -140 420 -140 {lab=GND}
N 380 -90 380 -40 {lab=GND}
N 240 -60 240 -40 {lab=GND}
N 240 -40 260 -40 {lab=GND}
N 240 -90 260 -90 {lab=GND}
N 380 -90 400 -90 {lab=GND}
N 240 -160 240 -120 {lab=#net5}
N 400 -160 400 -120 {lab=#net6}
N 160 -90 200 -90 {lab=INP}
N 440 -90 480 -90 {lab=INM}
N 240 -400 340 -400 {lab=#net4}
N 300 -420 300 -190 {lab=#net3}
N 340 -400 340 -190 {lab=#net4}
N 400 -420 660 -420 {lab=#net3}
N 920 -420 970 -420 {lab=#net7}
N 1060 -420 1130 -420 {lab=#net8}
N 840 -390 840 -350 {lab=CLK}
N 710 -350 840 -350 {lab=CLK}
N 810 -290 1010 -290 {lab=#net9}
N 710 -350 710 -290 {lab=CLK}
N 810 -450 810 -290 {lab=#net9}
N 810 -450 840 -450 {lab=#net9}
N 920 -420 920 -320 {lab=#net7}
N 920 -320 970 -320 {lab=#net7}
N 670 -350 670 -280 {lab=CLK}
N 670 -350 710 -350 {lab=CLK}
N 1130 -420 1150 -420 {lab=#net8}
N 1130 -420 1130 -320 {lab=#net8}
N 1050 -320 1130 -320 {lab=#net8}
N 1150 -420 1170 -420 {lab=#net8}
N 140 -510 190 -510 {lab=VDD}
N 140 -470 190 -470 {lab=VDD}
N 240 -520 240 -510 {lab=VDD}
N 400 -520 400 -510 {lab=VDD}
N 400 -510 450 -510 {lab=VDD}
N 400 -470 450 -470 {lab=VDD}
N 300 -470 300 -420 {lab=#net3}
N 400 -440 400 -420 {lab=#net3}
N 420 -330 420 -190 {lab=GND}
N 260 -40 380 -40 {lab=GND}
N 260 -140 260 -90 {lab=GND}
N 380 -140 380 -90 {lab=GND}
N 240 -440 240 -400 {lab=#net4}
N 340 -470 340 -400 {lab=#net4}
N 800 -290 810 -290 {lab=#net9}
N 880 -420 920 -420 {lab=#net7}
N 840 -350 1010 -350 {lab=CLK}
N 660 -420 800 -420 {lab=#net3}
N 540 -280 670 -280 {lab=CLK}
N 1170 -420 1240 -420 {lab=#net8}
N 1540 -420 1630 -420 {lab=OUT}
N 1240 -380 1240 -350 {lab=GND}
N 1230 -400 1240 -400 {lab=#net10}
N 1140 -450 1140 -400 {lab=EN}
C {code_shown.sym} 680 -930 0 0 {name=spice only_toplevel=false value="

.inc /home/tororo/LR/T_mos_model.sp

VVDD VDD 0 DC 3.3

VINP INP 0 pwl (0   0 100n 3.3 200n   0 300n 3.3 400n   0 500n 3.3)
VINM INM 0 pwl (0 3.3 100n   0 200n 3.3 300n   0 400n 3.3 500n 0)
VCLK CLK 0 pulse(0 3.3 25n 1n 1n 50n 100n)
ven EN 0 pulse(0 3.3 0n 1n 1n 200n 252n)

.control
tran 1n 400n

plot v(OUT)
plot v(CLK)
plot v(INP)
plot v(INM)

write "clocked_comparatorDF2.raw"

.endc"}
C {.klayout/salt/OpenRule1um/tech/tech/symbols/Xschem/MinedaLIB/NMOS_MIN.sym} 280 -330 2 0 {name=M4 model=nch w=3.5u l=0.35u as=0 ps=0 ad=0 pd=0 m=1}
C {.klayout/salt/OpenRule1um/tech/tech/symbols/Xschem/MinedaLIB/PMOS_MIN.sym} 280 -470 2 0 {name=M1 model=pch w=10.5u l=0.35u as=0 ps=0 ad=0 pd=0 m=1qqq}
C {.klayout/salt/OpenRule1um/tech/tech/symbols/Xschem/MinedaLIB/PMOS_MIN.sym} 100 -470 0 0 {name=M2 model=pch w=10.5u l=0.35u as=0 ps=0 ad=0 pd=0 m=1}
C {.klayout/salt/OpenRule1um/tech/tech/symbols/Xschem/MinedaLIB/NMOS_MIN.sym} 360 -330 0 0 {name=M6 model=nch w=3.5u l=0.35u as=0 ps=0 ad=0 pd=0 m=1}
C {.klayout/salt/OpenRule1um/tech/tech/symbols/Xschem/MinedaLIB/NMOS_MIN.sym} 360 -190 0 0 {name=M7 model=nch w=3.5u l=0.35u as=0 ps=0 ad=0 pd=0 m=1}
C {.klayout/salt/OpenRule1um/tech/tech/symbols/Xschem/MinedaLIB/NMOS_MIN.sym} 280 -190 2 0 {name=M8 model=nch w=3.5u l=0.35u as=0 ps=0 ad=0 pd=0 m=1}
C {vdd.sym} 240 -520 0 0 {name=l2 lab=VDD}
C {vdd.sym} 400 -520 0 0 {name=l3 lab=VDD}
C {gnd.sym} 320 -40 0 0 {name=l1 lab=GND}
C {.klayout/salt/OpenRule1um/tech/tech/symbols/Xschem/MinedaLIB/NMOS_MIN.sym} 440 -90 2 0 {name=M9 model=nch w=3.5u l=0.35u as=0 ps=0 ad=0 pd=0 m=1}
C {.klayout/salt/OpenRule1um/tech/tech/symbols/Xschem/MinedaLIB/NMOS_MIN.sym} 200 -90 0 0 {name=M10 model=nch w=3.5u l=0.35u as=0 ps=0 ad=0 pd=0 m=1}
C {ipin.sym} 160 -90 0 0 {name=p1 lab=INP}
C {ipin.sym} 480 -90 2 0 {name=p6 lab=INM}
C {ipin.sym} 20 -280 0 0 {name=p7 lab=CLK}
C {.klayout/salt/OpenRule1um/tech/tech/symbols/Xschem/MinedaLIB/PMOS_MIN.sym} 540 -470 2 0 {name=M3 model=pch w=10.5u l=0.35u as=0 ps=0 ad=0 pd=0 m=1qqq}
C {.klayout/salt/OpenRule1um/tech/tech/symbols/Xschem/MinedaLIB/PMOS_MIN.sym} 360 -470 0 0 {name=M5 model=pch w=10.5u l=0.35u as=0 ps=0 ad=0 pd=0 m=1}
C {opin.sym} 1630 -420 0 0 {name=p3 lab=OUT}
C {LR/task_LATCH/INVERTER.sym} 1010 -420 0 0 {name=X3}
C {LR/task_LATCH/INVERTER.sym} 750 -290 0 0 {name=X4}
C {LR/task_LATCH/CLOCKEDINVERTER.sym} 840 -420 0 0 {name=X5}
C {LR/task_LATCH/CLOCKEDINVERTER.sym} 1010 -320 0 1 {name=X6}
C {ipin.sym} 1140 -450 0 0 {name=p2 lab=EN}
C {LR/task_LATCH/SELECTOR.sym} 1390 -400 0 0 {name=x1}
C {gnd.sym} 1240 -350 0 0 {name=l4 lab=GND}
C {LR/task_LATCH/INVERTER.sym} 1180 -400 0 0 {name=X2}
