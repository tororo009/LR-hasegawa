v {xschem version=3.4.7RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 660 -420 720 -420 {lab=COMOUT1}
N 660 -280 720 -280 {lab=COMOUT1}
N 700 -320 700 -300 {lab=OUTB}
N 700 -300 720 -300 {lab=OUTB}
N 700 -400 720 -400 {lab=OUT}
N 700 -400 700 -380 {lab=OUT}
N 700 -380 820 -320 {lab=OUT}
N 820 -320 820 -290 {lab=OUT}
N 810 -290 820 -290 {lab=OUT}
N 810 -410 820 -410 {lab=OUTB}
N 820 -410 820 -380 {lab=OUTB}
N 700 -320 820 -380 {lab=OUTB}
N 820 -410 860 -410 {lab=OUTB}
N 820 -290 860 -290 {lab=OUT}
N 240 -300 240 -220 {lab=#net1}
N 400 -300 400 -220 {lab=#net2}
N 400 -440 500 -440 {lab=COMOUT1}
N 140 -440 240 -440 {lab=COMOUT1}
N 240 -440 240 -360 {lab=COMOUT1}
N 400 -440 400 -360 {lab=COMOUT1}
N 240 -520 240 -500 {lab=VDD}
N 400 -520 400 -500 {lab=VDD}
N 400 -470 500 -470 {lab=VDD}
N 140 -470 240 -470 {lab=VDD}
N 190 -510 190 -470 {lab=VDD}
N 140 -510 240 -510 {lab=VDD}
N 400 -510 500 -510 {lab=VDD}
N 450 -510 450 -470 {lab=VDD}
N 500 -510 500 -500 {lab=VDD}
N 140 -510 140 -500 {lab=VDD}
N 340 -470 360 -470 {lab=COMOUT1}
N 280 -470 300 -470 {lab=COMOUT1}
N 300 -420 400 -420 {lab=COMOUT1}
N 340 -190 360 -190 {lab=COMOUT1}
N 280 -190 300 -190 {lab=COMOUT1}
N 360 -330 360 -280 {lab=CLK}
N 120 -280 360 -280 {lab=CLK}
N 360 -280 540 -280 {lab=CLK}
N 540 -470 540 -280 {lab=CLK}
N 100 -470 100 -280 {lab=CLK}
N 100 -280 120 -280 {lab=CLK}
N 20 -280 100 -280 {lab=CLK}
N 220 -190 240 -190 {lab=GND}
N 400 -330 420 -330 {lab=GND}
N 400 -190 420 -190 {lab=GND}
N 280 -330 280 -280 {lab=CLK}
N 220 -330 240 -330 {lab=GND}
N 220 -330 220 -240 {lab=GND}
N 220 -240 220 -140 {lab=GND}
N 420 -330 420 -140 {lab=GND}
N 220 -140 260 -140 {lab=GND}
N 260 -140 260 -40 {lab=GND}
N 260 -40 400 -40 {lab=GND}
N 400 -60 400 -40 {lab=GND}
N 380 -140 420 -140 {lab=GND}
N 380 -140 380 -40 {lab=GND}
N 240 -60 240 -40 {lab=GND}
N 240 -40 260 -40 {lab=GND}
N 240 -90 260 -90 {lab=GND}
N 380 -90 400 -90 {lab=GND}
N 240 -160 240 -120 {lab=#net3}
N 400 -160 400 -120 {lab=#net4}
N 160 -90 200 -90 {lab=INP}
N 440 -90 480 -90 {lab=INM}
N 240 -400 260 -400 {lab=COMOUT1}
N 320 -400 340 -400 {lab=COMOUT1}
N 260 -400 320 -400 {lab=COMOUT1}
N 300 -470 300 -190 {lab=COMOUT1}
N 340 -470 340 -190 {lab=COMOUT1}
N 400 -420 600 -420 {lab=COMOUT1}
N 340 -400 600 -400 {lab=COMOUT1}
N 600 -420 660 -420 {lab=COMOUT1}
N 600 -400 600 -280 {lab=COMOUT1}
N 600 -280 660 -280 {lab=COMOUT1}
C {code_shown.sym} 930 -670 0 0 {name=spice only_toplevel=false value="

.inc /home/hnriv/models_035/model035.txt

VVDD VDD 0 DC 3.3

*VINP INP 0 pwl (0   0 100n 3.3 200n   0 300n 3.3 400n   0 500n 3.3)
*VINM INM 0 pwl (0 3.3 100n   0 200n 3.3 300n   0 400n 3.3 500n 0)
*VCLK CLK 0 pulse(0 3.3 25n 1n 1n 50n 100n)


VINP INP 0 pwl (0 2.5 100n 3.3 200n 2.5 300n 3.3 400n 2.5 500n 3.3)
VINM INM 0 pwl (0 3.3 100n 2.5 200n 3.3 300n 2.5 400n 3.3 500n 2.5)
VCLK CLK 0 pulse(0 3.3 25n 1n 1n 50n 100n)


*VINP INP 0 pwl (0   0 100n 0.8 200n   0 300n 0.8 400n   0 500n 0.8)
*VINM INM 0 pwl (0 0.8 100n   0 200n 0.8 300n   0 400n 0.8 500n 0)
*VCLK CLK 0 pulse(0 3.3 25n 1n 1n 50n 100n)

.control
tran 1n 400n

plot v(OUT)
plot v(CLK)
plot v(INP)
plot v(INM)

write "clocked_comparator.raw"

.endc"}
C {opin.sym} 860 -410 0 0 {name=p4 lab=OUTB}
C {opin.sym} 860 -290 0 0 {name=p5 lab=OUT}
C {LR_Work2/NAND2.sym} 870 -410 0 0 {name=x2}
C {LR_Work2/NAND2.sym} 870 -290 0 0 {name=x3}
C {NMOS_MIN.sym} 280 -330 2 0 {name=M4 model=nch w=3.5u l=0.35u as=0 ps=0 ad=0 pd=0 m=1}
C {PMOS_MIN.sym} 280 -470 2 0 {name=M1 model=pch w=10.5u l=0.35u as=0 ps=0 ad=0 pd=0 m=1qqq}
C {PMOS_MIN.sym} 100 -470 0 0 {name=M2 model=pch w=10.5u l=0.35u as=0 ps=0 ad=0 pd=0 m=1}
C {NMOS_MIN.sym} 360 -330 0 0 {name=M6 model=nch w=3.5u l=0.35u as=0 ps=0 ad=0 pd=0 m=1}
C {NMOS_MIN.sym} 360 -190 0 0 {name=M7 model=nch w=3.5u l=0.35u as=0 ps=0 ad=0 pd=0 m=1}
C {NMOS_MIN.sym} 280 -190 2 0 {name=M8 model=nch w=3.5u l=0.35u as=0 ps=0 ad=0 pd=0 m=1}
C {vdd.sym} 240 -520 0 0 {name=l2 lab=VDD}
C {vdd.sym} 400 -520 0 0 {name=l3 lab=VDD}
C {gnd.sym} 320 -40 0 0 {name=l1 lab=GND}
C {NMOS_MIN.sym} 440 -90 2 0 {name=M9 model=nch w=3.5u l=0.35u as=0 ps=0 ad=0 pd=0 m=1}
C {NMOS_MIN.sym} 200 -90 0 0 {name=M10 model=nch w=3.5u l=0.35u as=0 ps=0 ad=0 pd=0 m=1}
C {ipin.sym} 160 -90 0 0 {name=p1 lab=INP}
C {ipin.sym} 480 -90 2 0 {name=p6 lab=INM}
C {ipin.sym} 20 -280 0 0 {name=p7 lab=CLK}
C {PMOS_MIN.sym} 540 -470 2 0 {name=M3 model=pch w=10.5u l=0.35u as=0 ps=0 ad=0 pd=0 m=1qqq}
C {PMOS_MIN.sym} 360 -470 0 0 {name=M5 model=pch w=10.5u l=0.35u as=0 ps=0 ad=0 pd=0 m=1}
C {lab_wire.sym} 680 -420 0 0 {name=p2 sig_type=std_logic lab=COMOUT1}
C {lab_wire.sym} 680 -280 0 0 {name=p3 sig_type=std_logic lab=COMOUT2}
