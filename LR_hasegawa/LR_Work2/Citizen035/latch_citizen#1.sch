v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -220 0 -160 0 {lab=#net1}
N -60 -0 20 0 {lab=#net2}
N 120 0 210 0 {lab=#net3}
N -350 0 -330 -0 {lab=#net4}
N -330 -0 -320 0 {lab=#net4}
N 310 -0 450 -0 {lab=XQ}
N -220 130 -160 130 {lab=#net5}
N -60 130 20 130 {lab=#net6}
N 120 130 210 130 {lab=#net7}
N -330 130 -320 130 {lab=#net8}
N -1540 -70 -1540 210 {lab=PD}
N -1450 -80 -1400 -80 {lab=#net9}
N -1450 220 -1390 220 {lab=#net10}
N -1000 0 -930 0 {lab=#net11}
N -1000 130 -930 130 {lab=#net12}
N -1090 10 -1090 120 {lab=#net13}
N -1290 60 -1090 60 {lab=#net13}
N -1290 60 -1290 220 {lab=#net13}
N -1300 -80 -930 -80 {lab=#net14}
N -930 -80 -930 -20 {lab=#net14}
N -840 -10 -800 -10 {lab=#net15}
N -840 140 -800 140 {lab=#net16}
N -700 -10 -580 -10 {lab=#net17}
N -700 140 -580 140 {lab=#net18}
N -490 -0 -350 0 {lab=#net4}
N -490 130 -330 130 {lab=#net8}
N -580 10 -580 40 {lab=#net8}
N -580 40 -380 130 {lab=#net8}
N -580 90 -580 120 {lab=#net4}
N -580 90 -380 -0 {lab=#net4}
N -1430 -80 -1430 180 {lab=#net9}
N -1430 180 -930 180 {lab=#net9}
N -930 150 -930 180 {lab=#net9}
N -1690 -90 -1540 -90 {lab=RST}
N -1690 60 -1540 60 {lab=PD}
N -1690 230 -1540 230 {lab=CLK}
N -1180 -10 -1090 -10 {lab=R}
N -1180 140 -1090 140 {lab=S}
N 310 130 440 130 {lab=Q}
C {work/LR-hasegawa/LR_hasegawa/LR_Work2/Citizen035/INVERTER_Citizen.sym} -80 0 0 0 {name=x1}
C {work/LR-hasegawa/LR_hasegawa/LR_Work2/Citizen035/INVERTER3_Citizen.sym} 80 0 0 0 {name=x2}
C {work/LR-hasegawa/LR_hasegawa/LR_Work2/Citizen035/INVERTER9_Citizen.sym} 260 0 0 0 {name=x3}
C {work/LR-hasegawa/LR_hasegawa/LR_Work2/Citizen035/INVERTER27_Citizen.sym} 450 0 0 0 {name=x4}
C {.klayout/salt/Citizen035/Technology/tech/symbols/Xschem/Citizen035/code.sym} 350 -230 0 0 {name=s1 only_toplevel=false value=blabla}
C {.klayout/salt/Citizen035/Technology/tech/symbols/Xschem/Citizen035/code_shown.sym} 510 -220 0 0 {name=s2 only_toplevel=false value="

VVDD VDD 0 DC 3.3

VIN IN 0 pulse(0 3.3 100n 1n 1n 100n 200n)

*Cload Q 0 1p
*Cload XQ 0 1p


.control
tran 1n 1000n

meas TRAN Iavg AVG I(VVDD)

meas TRAN tplh TRIG CLK VAL=1.65 RISE=2 TARG Q VAL=1.65 RISE=1
meas TRAN tphl TRIG CLK VAL=1.65 RISE=3 TARG Q VAL=1.65 FALL=1

set file=sim.log
write "buffer_citizen#1.raw"

.endc"}
C {work/LR-hasegawa/LR_hasegawa/LR_Work2/Citizen035/INVERTER_Citizen.sym} -80 130 0 0 {name=x5}
C {work/LR-hasegawa/LR_hasegawa/LR_Work2/Citizen035/INVERTER3_Citizen.sym} 80 130 0 0 {name=x6}
C {work/LR-hasegawa/LR_hasegawa/LR_Work2/Citizen035/INVERTER9_Citizen.sym} 260 130 0 0 {name=x7}
C {work/LR-hasegawa/LR_hasegawa/LR_Work2/Citizen035/INVERTER27_Citizen.sym} 450 130 0 0 {name=x8}
C {work/LR-hasegawa/LR_hasegawa/LR_Work2/Citizen035/NAND2_Citizen.sym} -1390 220 0 0 {name=x9}
C {work/LR-hasegawa/LR_hasegawa/LR_Work2/Citizen035/NOR2_Citizen.sym} -780 140 0 0 {name=x10}
C {work/LR-hasegawa/LR_hasegawa/LR_Work2/Citizen035/NAND2_Citizen.sym} -430 0 0 0 {name=x11}
C {work/LR-hasegawa/LR_hasegawa/LR_Work2/Citizen035/NAND2_Citizen.sym} -430 130 0 0 {name=x12}
C {work/LR-hasegawa/LR_hasegawa/LR_Work2/Citizen035/NAND2_Citizen.sym} -780 -10 0 0 {name=x13}
C {work/LR-hasegawa/LR_hasegawa/LR_Work2/Citizen035/NAND2_Citizen.sym} -940 130 0 0 {name=x14}
C {work/LR-hasegawa/LR_hasegawa/LR_Work2/Citizen035/NAND2_Citizen.sym} -940 0 0 0 {name=x15}
C {work/LR-hasegawa/LR_hasegawa/LR_Work2/Citizen035/NAND2_Citizen.sym} -1390 -80 0 0 {name=x20}
C {.klayout/salt/Citizen035/Technology/tech/symbols/Xschem/Citizen035/iopin.sym} -1690 -90 0 0 {name=p1 lab=RST}
C {.klayout/salt/Citizen035/Technology/tech/symbols/Xschem/Citizen035/iopin.sym} -1690 60 0 0 {name=p3 lab=PD}
C {.klayout/salt/Citizen035/Technology/tech/symbols/Xschem/Citizen035/iopin.sym} -1690 230 0 0 {name=p4 lab=CLK}
C {.klayout/salt/Citizen035/Technology/tech/symbols/Xschem/Citizen035/iopin.sym} -1180 -10 0 0 {name=p5 lab=R}
C {.klayout/salt/Citizen035/Technology/tech/symbols/Xschem/Citizen035/iopin.sym} -1180 140 0 0 {name=p6 lab=S}
C {.klayout/salt/Citizen035/Technology/tech/symbols/Xschem/Citizen035/iopin.sym} 440 130 0 0 {name=p7 lab=Q}
C {.klayout/salt/Citizen035/Technology/tech/symbols/Xschem/Citizen035/iopin.sym} 450 0 0 0 {name=p8 lab=XQ}
C {work/LR-hasegawa/LR_hasegawa/LR_Work2/Citizen035/INVERTER_Citizen.sym} -560 140 0 0 {name=x16}
C {work/LR-hasegawa/LR_hasegawa/LR_Work2/Citizen035/INVERTER_Citizen.sym} -560 -10 0 0 {name=x18}
C {work/LR-hasegawa/LR_hasegawa/LR_Work2/Citizen035/INVERTER_Citizen.sym} -1150 220 0 0 {name=x21}
C {work/LR-hasegawa/LR_hasegawa/LR_Work2/Citizen035/INVERTER_Citizen.sym} -1160 -80 0 0 {name=x22}
