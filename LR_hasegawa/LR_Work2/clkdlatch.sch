v {xschem version=3.4.7RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -120 120 100 120 {lab=#net1}
N 410 -70 410 80 {lab=#net2}
N -130 120 -120 120 {lab=#net1}
N -60 40 100 40 {lab=CLKIN}
N -250 120 -230 120 {lab=CLKIN}
N -120 -130 -120 120 {lab=#net1}
N -250 40 -250 120 {lab=CLKIN}
N -250 40 -60 40 {lab=CLKIN}
N 0 80 40 80 {lab=#net3}
N 140 80 410 80 {lab=#net2}
N -0 -60 50 -60 {lab=#net3}
N -0 -60 0 80 {lab=#net3}
N -0 -80 50 -80 {lab=#net4}
N -0 -180 -0 -80 {lab=#net4}
N -340 -120 -340 -70 {lab=#net5}
N -340 -70 -270 -70 {lab=#net5}
N -340 -50 -270 -50 {lab=#net6}
N -340 -50 -340 60 {lab=#net6}
N 410 80 410 180 {lab=#net2}
N -430 180 410 180 {lab=#net2}
N -430 70 -430 180 {lab=#net2}
N -500 50 -430 50 {lab=#net7}
N -500 -110 -430 -110 {lab=CLKIN}
N -500 -110 -500 -50 {lab=CLKIN}
N -540 120 -250 120 {lab=CLKIN}
N -180 -60 -90 -60 {lab=#net8}
N -30 -60 -30 -20 {lab=#net3}
N -90 -60 -90 -20 {lab=#net8}
N -30 -60 -0 -60 {lab=#net3}
N -120 -130 -60 -130 {lab=#net1}
N -60 20 -60 40 {lab=CLKIN}
N -60 -90 -60 -60 {lab=VDD}
N -60 -60 -50 -60 {lab=VDD}
N -70 -40 -60 -40 {lab=GND}
N -60 -40 -60 -20 {lab=GND}
N -540 -110 -540 120 {lab=CLKIN}
N 140 -70 410 -70 {lab=#net2}
N 410 -70 470 -70 {lab=#net2}
N -770 120 -750 120 {lab=PDIN}
N -650 120 -540 120 {lab=CLKIN}
N -770 120 -770 210 {lab=PDIN}
N -880 20 -880 110 {lab=CLK}
N -1060 -130 -430 -130 {lab=D}
N -1060 20 -880 20 {lab=CLK}
N -1060 130 -880 130 {lab=PD}
N 760 -10 760 30 {lab=GND}
N 570 -70 760 -70 {lab=OUT}
N 760 -170 760 -130 {lab=VDD}
N -540 -110 -500 -110 {lab=CLKIN}
N -90 -90 -90 -60 {lab=#net8}
N -30 -90 -30 -60 {lab=#net3}
N -790 120 -770 120 {lab=PDIN}
N -200 -190 -180 -190 {lab=#net9}
N -220 -190 -200 -190 {lab=#net9}
N -80 -190 -0 -190 {lab=#net4}
N -0 -190 -0 -180 {lab=#net4}
N -1060 -180 -310 -180 {lab=RST}
N -980 -200 -980 130 {lab=PD}
N -980 -200 -310 -200 {lab=PD}
C {LR_Work2/symbol/INVERTER.sym} 10 120 0 0 {name=x7}
C {LR_Work2/symbol/CLOCKEDINVERTER.sym} -20 80 2 0 {name=x6}
C {LR_Work2/NAND2.sym} 200 -70 0 0 {name=x1}
C {LR_Work2/NAND2.sym} -120 -60 0 0 {name=x2}
C {LR_Work2/NAND2.sym} -280 60 0 0 {name=x3}
C {LR_Work2/NAND2.sym} -280 -120 0 0 {name=x8}
C {LR_Work2/symbol/INVERTER.sym} -500 190 1 0 {name=x9}
C {ipin.sym} -1060 -180 0 0 {name=p1 lab=RST}
C {ipin.sym} -1060 -130 0 0 {name=p3 lab=D}
C {ipin.sym} -1060 20 0 0 {name=p4 lab=CLK}
C {NMOS_MIN.sym} -60 20 3 0 {name=M4 model=nch w=3.5u l=0.35u as=0 ps=0 ad=0 pd=0 m=1}
C {PMOS_MIN.sym} -60 -130 1 0 {name=M1 model=pch w=10.5u l=0.35u as=0 ps=0 ad=0 pd=0 m=1}
C {vdd.sym} -50 -60 0 0 {name=l1 lab=VDD}
C {gnd.sym} -70 -40 0 0 {name=l2 lab=GND}
C {code_shown.sym} 160 -1020 0 0 {name=spice only_toplevel=false value="

.inc /home/tororo/Xschem/osu_mos_model.sp

VVDD VDD 0 DC 3.3

*VRST RST 0 pulse(0 3.3 0n 1n 1n 700n 800n)
VRST RST 0 DC 3.3
VD D 0 pulse(0 3.3 200n 1n 1n 100n 200n)
*VD D 0 DC 3.3
VPD PD 0 pulse(0 3.3 0n 1n 1n 500n 600n)
*VPD PD 0 DC 3.3

VCLK CLK 0 pulse(0 3.3 25n 1n 1n 50n 100n)
*VCLK CLK 0 DC 0

Cload OUT 0 1p


.control
tran 1n 1000n

meas TRAN Iavg AVG I(VVDD)

meas TRAN tplh TRIG CLK VAL=1.65 RISE=3 TARG OUT VAL=1.65 RISE=1
meas TRAN tphl TRIG CLK VAL=1.65 RISE=4 TARG OUT VAL=1.65 FALL=2


write "clkdlatch.raw"

.endc"}
C {LR_Work2/symbol/INVERTER.sym} 710 -70 0 0 {name=x4}
C {LR_Work2/NAND2.sym} -730 120 0 0 {name=x10}
C {LR_Work2/symbol/INVERTER.sym} -510 120 0 0 {name=x11}
C {ipin.sym} -1060 130 0 0 {name=p2 lab=PD}
C {lab_pin.sym} -580 120 0 0 {name=p6 sig_type=std_logic lab=CLKIN}
C {lab_pin.sym} -770 210 0 0 {name=p7 sig_type=std_logic lab=PDIN}
C {gnd.sym} 760 30 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 660 -70 0 0 {name=p5 sig_type=std_logic lab=OUT}
C {isource.sym} 760 -100 0 0 {name=I0 value=2000u}
C {vdd.sym} 760 -170 0 0 {name=l4 lab=VDD}
C {LR_Work2/NAND2.sym} -160 -190 0 0 {name=x5}
C {LR_Work2/symbol/INVERTER.sym} 60 -190 0 0 {name=x12}
