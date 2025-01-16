vlog -work work Simulation_decodeur_3_x_8.vwf.vtvsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.DECODEUR_3_x_8_vlg_vec_tst -voptargs="+acc"
add wave /*
run -all
