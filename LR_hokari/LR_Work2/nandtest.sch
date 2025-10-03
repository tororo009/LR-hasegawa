v {xschem version=3.4.7RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -70 -10 -40 -10 {lab=IN1}
N -70 10 -40 10 {lab=IN2}
N 50 -0 80 0 {lab=OUT}
C {LR_Work2/NAND2.sym} 110 0 0 0 {name=x1}
C {ipin.sym} -70 -10 0 0 {name=p1 lab=IN1}
C {ipin.sym} -70 10 0 0 {name=p2 lab=IN2}
C {opin.sym} 80 0 0 0 {name=p3 lab=OUT}
C {code_shown.sym} 150 -140 0 0 {name=spice only_toplevel=false value="

.inc /home/tororo/Xschem/osu_mos_model.sp

VVDD VDD 0 DC 3.3
VIN1 IN1 0 pulse(0 3.3 0n 1n 1n 100n 200n)
VIN2 IN2 0 pulse(0 3.3 0n 1n 1n 50n 100n)



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


write "nandtest.raw"

.endc"}
