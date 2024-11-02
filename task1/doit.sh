rm -rf obj_dir
rm -f top.vcd

verilator -Wall --cc --trace sinegen.sv counter.sv rom.sv --exe sinegen_tb.cpp
make -j -C obj_dir/ -f Vsinegen.mk Vsinegen

obj_dir/Vsinegen

#cd
#cd ~/Documents/iac/lab0-devtools/tools
#source ./attach_usb.sh