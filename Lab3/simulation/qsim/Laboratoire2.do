onerror {exit -code 1}
vlib work
vlog -work work Laboratoire2.vo
vlog -work work Simulation_Processor_MIPS_with_pipelines_diagram.vwf.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Processor_MIPS_with_Pipelines_diagram_vlg_vec_tst -voptargs="+acc"
vcd file -direction Laboratoire2.msim.vcd
vcd add -internal Processor_MIPS_with_Pipelines_diagram_vlg_vec_tst/*
vcd add -internal Processor_MIPS_with_Pipelines_diagram_vlg_vec_tst/i1/*
run -all
quit -f
