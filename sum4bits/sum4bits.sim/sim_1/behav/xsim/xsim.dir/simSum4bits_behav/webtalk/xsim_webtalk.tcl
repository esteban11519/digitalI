webtalk_init -webtalk_dir /home/esteban/digitalI/practices/sum4bits/sum4bits.sim/sim_1/behav/xsim/xsim.dir/simSum4bits_behav/webtalk/
webtalk_register_client -client project
webtalk_add_data -client project -key date_generated -value "Mon Apr  6 13:11:52 2020" -context "software_version_and_target_device"
webtalk_add_data -client project -key product_version -value "XSIM v2019.2 (64-bit)" -context "software_version_and_target_device"
webtalk_add_data -client project -key build_version -value "2708876" -context "software_version_and_target_device"
webtalk_add_data -client project -key os_platform -value "LIN64" -context "software_version_and_target_device"
webtalk_add_data -client project -key registration_id -value "" -context "software_version_and_target_device"
webtalk_add_data -client project -key tool_flow -value "xsim_vivado" -context "software_version_and_target_device"
webtalk_add_data -client project -key beta -value "FALSE" -context "software_version_and_target_device"
webtalk_add_data -client project -key route_design -value "FALSE" -context "software_version_and_target_device"
webtalk_add_data -client project -key target_family -value "not_applicable" -context "software_version_and_target_device"
webtalk_add_data -client project -key target_device -value "not_applicable" -context "software_version_and_target_device"
webtalk_add_data -client project -key target_package -value "not_applicable" -context "software_version_and_target_device"
webtalk_add_data -client project -key target_speed -value "not_applicable" -context "software_version_and_target_device"
webtalk_add_data -client project -key random_id -value "0b3cdc95-ca8c-4854-b3c6-457bc06409b8" -context "software_version_and_target_device"
webtalk_add_data -client project -key project_id -value "0e95761fd97f44f38cf29d62b2fbbe05" -context "software_version_and_target_device"
webtalk_add_data -client project -key project_iteration -value "6" -context "software_version_and_target_device"
webtalk_add_data -client project -key os_name -value "Ubuntu" -context "user_environment"
webtalk_add_data -client project -key os_release -value "Ubuntu 18.04.4 LTS" -context "user_environment"
webtalk_add_data -client project -key cpu_name -value "Intel(R) Core(TM) i5-8250U CPU @ 1.60GHz" -context "user_environment"
webtalk_add_data -client project -key cpu_speed -value "2662.285 MHz" -context "user_environment"
webtalk_add_data -client project -key total_processors -value "1" -context "user_environment"
webtalk_add_data -client project -key system_ram -value "8.000 GB" -context "user_environment"
webtalk_register_client -client xsim
webtalk_add_data -client xsim -key Command -value "xsim" -context "xsim\\command_line_options"
webtalk_add_data -client xsim -key trace_waveform -value "true" -context "xsim\\usage"
webtalk_add_data -client xsim -key runtime -value "200 ns" -context "xsim\\usage"
webtalk_add_data -client xsim -key iteration -value "0" -context "xsim\\usage"
webtalk_add_data -client xsim -key Simulation_Time -value "0.08_sec" -context "xsim\\usage"
webtalk_add_data -client xsim -key Simulation_Memory -value "125696_KB" -context "xsim\\usage"
webtalk_transmit -clientid 2385900516 -regid "" -xml /home/esteban/digitalI/practices/sum4bits/sum4bits.sim/sim_1/behav/xsim/xsim.dir/simSum4bits_behav/webtalk/usage_statistics_ext_xsim.xml -html /home/esteban/digitalI/practices/sum4bits/sum4bits.sim/sim_1/behav/xsim/xsim.dir/simSum4bits_behav/webtalk/usage_statistics_ext_xsim.html -wdm /home/esteban/digitalI/practices/sum4bits/sum4bits.sim/sim_1/behav/xsim/xsim.dir/simSum4bits_behav/webtalk/usage_statistics_ext_xsim.wdm -intro "<H3>XSIM Usage Report</H3><BR>"
webtalk_terminate
