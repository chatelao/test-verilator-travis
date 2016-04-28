build_sim:
	verilator -Wall --trace --cc counter.v --exe tb_counter.cpp

build_tb:
	make -C obj_dir -j -f Vcounter.mk Vcounter

run_sim:
	./obj_dir/Vcounter
