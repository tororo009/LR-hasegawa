v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -350 0 -330 -0 {lab=IN}
N -330 -0 -320 0 {lab=IN}
N -220 0 450 0 {lab=OUT}
C {.klayout/salt/Citizen035/Technology/tech/symbols/Xschem/Citizen035/ipin.sym} -340 0 0 0 {name=p1 lab=IN}
C {.klayout/salt/Citizen035/Technology/tech/symbols/Xschem/Citizen035/opin.sym} 450 0 0 0 {name=p2 lab=OUT}
C {work/LR-hasegawa/LR_hasegawa/LR_Work2/Citizen035/INVERTER_Citizen.sym} -80 0 0 0 {name=x1}
C {.klayout/salt/Citizen035/Technology/tech/symbols/Xschem/Citizen035/code.sym} 350 -230 0 0 {name=s1 only_toplevel=false value=blabla}
C {.klayout/salt/Citizen035/Technology/tech/symbols/Xschem/Citizen035/code_shown.sym} 510 -220 0 0 {name=s2 only_toplevel=false value="

VVDD VDD 0 DC 3.3

VIN IN 0 pulse(0 3.3 100n 1n 1n 100n 200n)

*Cload Q 0 1p
*Cload XQ 0 1p


.control
tran 1n 1000n
write "buffer_citizen#1.raw"

.endc"}
