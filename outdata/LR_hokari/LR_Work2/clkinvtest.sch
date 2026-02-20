v {xschem version=3.4.7RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 270 70 310 70 {lab=OUT}
N 100 70 170 70 {lab=IN}
N 90 150 100 150 {lab=CLK}
N 200 150 210 150 {lab=CLK}
N 210 110 210 150 {lab=CLK}
N 40 70 100 70 {lab=IN}
N 90 -30 90 150 {lab=CLK}
N 100 150 200 150 {lab=CLK}
N 190 -30 210 -30 {lab=#net1}
N 210 -30 210 30 {lab=#net1}
C {LR_Work2/symbol/CLOCKEDINVERTER.sym} 330 70 0 0 {name=x1}
C {ipin.sym} 40 70 0 0 {name=p1 lab=IN}
C {ipin.sym} 90 150 0 0 {name=p2 lab=CLK}
C {LR_Work2/symbol/INVERTER.sym} 330 -30 0 0 {name=x2}
C {opin.sym} 310 70 0 0 {name=p3 lab=OUT}
C {code_shown.sym} 440 -40 0 0 {name=spice only_toplevel=false value="

.inc /home/tororo/Xschem/osu_mos_model.sp

VVDD VDD 0 DC 3.3
VIN IN 0 pulse(0 3.3 0n 1n 1n 100n 200n)
*VIN2 IN2 0 pulse(0 3.3 0n 1n 1n 50n 100n)



VCLK CLK 0 pulse(0 3.3 25n 1n 1n 50n 100n)
*VCLK CLK 0 pulse(0 3.3 0n 1n 1n 12.5n 25n)

.control
tran 1n 800n

meas TRAN Iavg AVG I(VVDD)

*meas tran delayIN1 find time WHEN v(CLK)=0.9 RISE=3 
*meas tran delayOUT find time WHEN v(OUT1)=0.9 FALL=2
*let delay1 = delayOUT - delayIN1
*echo tpHL = $&delay1

*meas tran delayIN1 find time WHEN v(CLK)=0.9 RISE=4 
*meas tran delayOUT find time WHEN v(OUT1)=0.9 RISE=2
*let delay2 = delayOUT - delayIN1
*echo tpLH = $&delay2


write "clkinvtest.raw"

.endc"}
