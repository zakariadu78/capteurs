* Command file for design: schematic_1
* Top Spice file: ..\..\genhdl\schematic_1\schematic_1.cir
.op
.tran 0 40ns 0
* .ac dec 100  
.plot tran V(n1n3) V(n1n5)
* .plot ac V(n1n3) V(n1n5)
.option eps=1.0e-5
.option hmin=0.9e-9

.option print_dc=0
* save tr toplevel
* save ac toplevel
* save ba

* .plot dc V(n1n3) V(n1n5)
.step E(yrcharge,res) 30 70 incr 20
.include ..\..\genhdl\schematic_1\schematic_1.cir
