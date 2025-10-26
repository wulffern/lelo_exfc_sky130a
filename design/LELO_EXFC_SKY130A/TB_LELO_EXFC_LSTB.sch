v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 200 -600 1000 -200 {flags=graph

y2=88.02
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1


divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0
node=re(lg_mag)
color=5
dataset=-1
unitx=1
logx=1
logy=0
sim_type=ac

y1=-21.88
autoload=0
x1=2
x2=9}
B 2 200 -180 1000 220 {flags=graph


ypos1=0
ypos2=2
divy=5
subdivy=4
unity=1

x2=9
divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=1
logy=0
sim_type=ac
x1=2
y1=0
y2=180
color=4
node=re(lg_phase)
autoload=0
hilight_wave=0}
N -470 110 -390 110 {
lab=#net1}
N -470 110 -470 130 {
lab=#net1}
N -470 190 -470 230 {
lab=0}
N -470 230 -350 230 {
lab=0}
N 50 120 70 120 {lab=VO}
N -280 160 -250 160 {lab=LPI}
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
C {LELO_EXFC_SKY130A/LELO_EXFC.sym} -100 150 0 0 {name=x1}
C {devices/vsource.sym} -470 160 0 0 {name=V1 value=1.8 savecurrent=false}
C {devices/gnd.sym} -410 230 0 0 {name=l1 lab=0}
C {devices/code_shown.sym} -480 -670 0 0 {name=s1 only_toplevel=false value="

.lib "../../../tech/ngspice/corners.spi" Ktt
.lib "../../../tech/ngspice/temperature.spi" Tt
.lib "../../../tech/ngspice/supply.spi" Vl

.include ../../../../cpdk/ngspice/tian_subckt.lib
X999 LPI VO loopgainprobe

.include ../../../../cpdk/ngspice/ideal_circuits.spi



.save all
.control
optran 0 0 0 10n 20u 0
op


* Set voltage AC to 1
ac dec 50 100 1G

* Set Current to 1
alter i.X999.Ii acmag=1
alter v.X999.Vi acmag=0
ac dec 50 100 1G

let lg_mag = db(tian_loop())
let lg_phase = 180*cph(tian_loop())/pi

write TB_LELO_EXFC_LSTB.raw

meas ac gm_db find lg_mag when lg_phase=0
meas ac pm_deg find lg_phase when lg_mag=0
meas ac f3db when lg_phase=135
meas ac ug when lg_mag=0
meas ac lf_gain find lg_mag at=1k
write TB_LELO_EXFC_LSTB_meas.raw
exit
.endc
.end

"}
C {devices/launcher.sym} 270 -650 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/TB_LELO_EXFC_LSTB.raw ac"
}
C {devices/vsource.sym} -390 170 0 0 {name=V2 value=1.2 savecurrent=false}
C {devices/lab_wire.sym} 70 120 0 1 {name=p1 sig_type=std_logic lab=VO}
C {devices/lab_wire.sym} -280 160 0 0 {name=p2 sig_type=std_logic lab=LPI}
C {devices/capa.sym} 120 190 0 0 {name=C1
m=1
value=200f
footprint=1206
device="ceramic capacitor"}
