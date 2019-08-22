gui_open_window Wave
gui_sg_create cmt5_group
gui_list_add_group -id Wave.1 {cmt5_group}
gui_sg_addsignal -group cmt5_group {cmt5_tb.test_phase}
gui_set_radix -radix {ascii} -signals {cmt5_tb.test_phase}
gui_sg_addsignal -group cmt5_group {{Input_clocks}} -divider
gui_sg_addsignal -group cmt5_group {cmt5_tb.CLK_IN1}
gui_sg_addsignal -group cmt5_group {{Output_clocks}} -divider
gui_sg_addsignal -group cmt5_group {cmt5_tb.dut.clk}
gui_list_expand -id Wave.1 cmt5_tb.dut.clk
gui_sg_addsignal -group cmt5_group {{Status_control}} -divider
gui_sg_addsignal -group cmt5_group {cmt5_tb.RESET}
gui_sg_addsignal -group cmt5_group {cmt5_tb.LOCKED}
gui_sg_addsignal -group cmt5_group {{Counters}} -divider
gui_sg_addsignal -group cmt5_group {cmt5_tb.COUNT}
gui_sg_addsignal -group cmt5_group {cmt5_tb.dut.counter}
gui_list_expand -id Wave.1 cmt5_tb.dut.counter
gui_zoom -window Wave.1 -full
