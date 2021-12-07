onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb_dec1to2/a_tb
add wave -noupdate /tb_dec1to2/en_tb
add wave -noupdate /tb_dec1to2/s0_tb
add wave -noupdate /tb_dec1to2/s1_tb
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {2300 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {8 ns}
