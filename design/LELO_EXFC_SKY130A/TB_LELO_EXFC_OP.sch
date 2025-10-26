v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -470 110 -390 110 {
lab=#net1}
N -470 110 -470 130 {
lab=#net1}
N -470 190 -470 230 {
lab=0}
N -470 230 -350 230 {
lab=0}
N 50 120 70 120 {lab=VO}
N -280 160 -250 160 {lab=VO}
N -350 180 -350 230 {lab=0}
N -350 180 -250 180 {lab=0}
N -390 110 -270 110 {lab=#net1}
N -270 110 -270 120 {lab=#net1}
N -270 120 -250 120 {lab=#net1}
N -390 200 -390 230 {lab=0}
N -390 130 -390 140 {lab=#net2}
N -390 130 -290 130 {lab=#net2}
N -290 130 -290 140 {lab=#net2}
N -290 140 -250 140 {lab=#net2}
N 120 120 120 160 {lab=VO}
N 70 120 120 120 {lab=VO}
N 120 220 120 230 {lab=0}
N -340 230 120 230 {lab=0}
N -350 230 -340 230 {lab=0}
N -310 160 -280 160 {lab=VO}
N -310 30 -310 160 {lab=VO}
N -310 30 90 30 {lab=VO}
N 90 30 90 120 {lab=VO}
C {LELO_EXFC_SKY130A/LELO_EXFC.sym} -100 150 0 0 {name=x1}
C {devices/vsource.sym} -470 160 0 0 {name=V1 value=1.8 savecurrent=false}
C {devices/gnd.sym} -410 230 0 0 {name=l1 lab=0}
C {devices/code_shown.sym} -500 -360 0 0 {name=s1 only_toplevel=false value="

.lib "../../../tech/ngspice/corners.spi" Ktt
.lib "../../../tech/ngspice/temperature.spi" Tt
.lib "../../../tech/ngspice/supply.spi" Vl

.include ../../../../cpdk/ngspice/ideal_circuits.spi


.option savecurrents
.save all
.control
optran 0 0 0 10n 20u 0
op
write TB_LELO_EXFC_OP.raw

exit
.endc
.end

"}
C {devices/vsource.sym} -390 170 0 0 {name=V2 value=1.2 savecurrent=false}
C {devices/lab_wire.sym} 70 120 0 1 {name=p1 sig_type=std_logic lab=VO}
C {devices/capa.sym} 120 190 0 0 {name=C1
m=1
value=200f
footprint=1206
device="ceramic capacitor"}
