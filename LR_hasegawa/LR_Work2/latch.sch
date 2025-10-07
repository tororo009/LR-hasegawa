v {xschem version=3.4.7RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -90 130 110 130 {lab=#net1}
N -100 130 -90 130 {lab=#net1}
N -60 50 110 50 {lab=CLK}
N -230 130 -200 130 {lab=CLK}
N -60 -120 -60 -100 {lab=#net1}
N -90 -120 -60 -120 {lab=#net1}
N -90 -120 -90 80 {lab=#net1}
N -200 50 -60 50 {lab=CLK}
N -220 50 -220 130 {lab=CLK}
N -220 50 -200 50 {lab=CLK}
N -60 -20 -60 0 {lab=CLK}
N 110 130 130 130 {lab=#net1}
N 110 50 130 50 {lab=CLK}
N 0 -60 70 -60 {lab=#net2}
N 30 90 70 90 {lab=#net2}
N -90 80 -90 130 {lab=#net1}
N 30 30 30 90 {lab=#net2}
N -60 0 -60 50 {lab=CLK}
N 30 -60 30 30 {lab=#net2}
N 170 -60 170 90 {lab=OUT}
N 170 -60 280 -60 {lab=OUT}
N -280 -60 -100 -60 {lab=D}
N -280 130 -230 130 {lab=CLK}
C {LR_Work2/symbol/INVERTER.sym} 310 -60 0 0 {name=x5}
C {LR_Work2/symbol/INVERTER.sym} 40 130 0 0 {name=x7}
C {LR_Work2/symbol/CLOCKEDINVERTER.sym} 60 -60 0 0 {name=x4}
C {LR_Work2/symbol/CLOCKEDINVERTER.sym} 10 90 2 0 {name=x6}
C {ipin.sym} -280 -60 0 0 {name=p1 lab=D}
C {ipin.sym} -280 130 0 0 {name=p2 lab=CLK}
C {opin.sym} 280 -60 0 0 {name=p3 lab=OUT}
C {code_shown.sym} 450 -130 0 0 {name=spice only_toplevel=false value="

.inc /home/tororo/LR/T_mos_model.sp

VVDD VDD 0 DC 3.3

VD D 0 pulse(0 3.3 0n 1n 1n 100n 200n)


VCLK CLK 0 pulse(0 3.3 25n 1n 1n 50n 100n)
*VCLK CLK 0 pulse(0 3.3 0n 1n 1n 12.5n 25n)

.control
tran 1n 875n

*meas tran delayIN1 find time WHEN v(CLK)=0.9 RISE=3 
*meas tran delayOUT find time WHEN v(OUT1)=0.9 FALL=2
*let delay1 = delayOUT - delayIN1
*echo tpHL = $&delay1

*meas tran delayIN1 find time WHEN v(CLK)=0.9 RISE=4 
*meas tran delayOUT find time WHEN v(OUT1)=0.9 RISE=2
*let delay2 = delayOUT - delayIN1
*echo tpLH = $&delay2


write "latch.raw"

.endc"}
