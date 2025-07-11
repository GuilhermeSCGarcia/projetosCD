onerror {exit -code 1}
vlib work
vcom -work work lab07.vho
vcom -work work Waveform6.vwf.vht
vsim -novopt -c -t 1ps -L fiftyfivenm -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.lab07toptemp_vhd_vec_tst
vcd file -direction lab07.msim.vcd
vcd add -internal lab07toptemp_vhd_vec_tst/*
vcd add -internal lab07toptemp_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f

