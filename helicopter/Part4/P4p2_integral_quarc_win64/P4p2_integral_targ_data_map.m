  function targMap = targDataMap(),

  ;%***********************
  ;% Create Parameter Map *
  ;%***********************
      
    nTotData      = 0; %add to this count as we go
    nTotSects     = 8;
    sectIdxOffset = 0;
    
    ;%
    ;% Define dummy sections & preallocate arrays
    ;%
    dumSection.nData = -1;  
    dumSection.data  = [];
    
    dumData.logicalSrcIdx = -1;
    dumData.dtTransOffset = -1;
    
    ;%
    ;% Init/prealloc paramMap
    ;%
    paramMap.nSections           = nTotSects;
    paramMap.sectIdxOffset       = sectIdxOffset;
      paramMap.sections(nTotSects) = dumSection; %prealloc
    paramMap.nTotData            = -1;
    
    ;%
    ;% Auto data (P4p2_integral_P)
    ;%
      section.nData     = 29;
      section.data(29)  = dumData; %prealloc
      
	  ;% P4p2_integral_P.A_est
	  section.data(1).logicalSrcIdx = 0;
	  section.data(1).dtTransOffset = 0;
	
	  ;% P4p2_integral_P.B_est
	  section.data(2).logicalSrcIdx = 1;
	  section.data(2).dtTransOffset = 36;
	
	  ;% P4p2_integral_P.C_est
	  section.data(3).logicalSrcIdx = 2;
	  section.data(3).dtTransOffset = 48;
	
	  ;% P4p2_integral_P.Elevation_offset
	  section.data(4).logicalSrcIdx = 3;
	  section.data(4).dtTransOffset = 66;
	
	  ;% P4p2_integral_P.Joystick_gain_x
	  section.data(5).logicalSrcIdx = 4;
	  section.data(5).dtTransOffset = 67;
	
	  ;% P4p2_integral_P.Joystick_gain_y
	  section.data(6).logicalSrcIdx = 5;
	  section.data(6).dtTransOffset = 68;
	
	  ;% P4p2_integral_P.K_
	  section.data(7).logicalSrcIdx = 6;
	  section.data(7).dtTransOffset = 69;
	
	  ;% P4p2_integral_P.L
	  section.data(8).logicalSrcIdx = 7;
	  section.data(8).dtTransOffset = 79;
	
	  ;% P4p2_integral_P.P_i
	  section.data(9).logicalSrcIdx = 8;
	  section.data(9).dtTransOffset = 97;
	
	  ;% P4p2_integral_P.Pitch_offset
	  section.data(10).logicalSrcIdx = 9;
	  section.data(10).dtTransOffset = 101;
	
	  ;% P4p2_integral_P.Travel_offset
	  section.data(11).logicalSrcIdx = 10;
	  section.data(11).dtTransOffset = 102;
	
	  ;% P4p2_integral_P.V_s_meas
	  section.data(12).logicalSrcIdx = 11;
	  section.data(12).dtTransOffset = 103;
	
	  ;% P4p2_integral_P.HILInitialize_analog_input_maxi
	  section.data(13).logicalSrcIdx = 12;
	  section.data(13).dtTransOffset = 104;
	
	  ;% P4p2_integral_P.HILInitialize_analog_input_mini
	  section.data(14).logicalSrcIdx = 13;
	  section.data(14).dtTransOffset = 105;
	
	  ;% P4p2_integral_P.HILInitialize_analog_output_max
	  section.data(15).logicalSrcIdx = 14;
	  section.data(15).dtTransOffset = 106;
	
	  ;% P4p2_integral_P.HILInitialize_analog_output_min
	  section.data(16).logicalSrcIdx = 15;
	  section.data(16).dtTransOffset = 107;
	
	  ;% P4p2_integral_P.HILInitialize_final_analog_outp
	  section.data(17).logicalSrcIdx = 16;
	  section.data(17).dtTransOffset = 108;
	
	  ;% P4p2_integral_P.HILInitialize_final_pwm_outputs
	  section.data(18).logicalSrcIdx = 17;
	  section.data(18).dtTransOffset = 109;
	
	  ;% P4p2_integral_P.HILInitialize_initial_analog_ou
	  section.data(19).logicalSrcIdx = 18;
	  section.data(19).dtTransOffset = 110;
	
	  ;% P4p2_integral_P.HILInitialize_initial_pwm_outpu
	  section.data(20).logicalSrcIdx = 19;
	  section.data(20).dtTransOffset = 111;
	
	  ;% P4p2_integral_P.HILInitialize_pwm_frequency
	  section.data(21).logicalSrcIdx = 20;
	  section.data(21).dtTransOffset = 112;
	
	  ;% P4p2_integral_P.HILInitialize_pwm_leading_deadb
	  section.data(22).logicalSrcIdx = 21;
	  section.data(22).dtTransOffset = 113;
	
	  ;% P4p2_integral_P.HILInitialize_pwm_trailing_dead
	  section.data(23).logicalSrcIdx = 22;
	  section.data(23).dtTransOffset = 114;
	
	  ;% P4p2_integral_P.HILInitialize_set_other_outputs
	  section.data(24).logicalSrcIdx = 23;
	  section.data(24).dtTransOffset = 115;
	
	  ;% P4p2_integral_P.HILInitialize_set_other_outpu_m
	  section.data(25).logicalSrcIdx = 24;
	  section.data(25).dtTransOffset = 116;
	
	  ;% P4p2_integral_P.HILInitialize_set_other_outpu_k
	  section.data(26).logicalSrcIdx = 25;
	  section.data(26).dtTransOffset = 117;
	
	  ;% P4p2_integral_P.HILInitialize_set_other_outpu_j
	  section.data(27).logicalSrcIdx = 26;
	  section.data(27).dtTransOffset = 118;
	
	  ;% P4p2_integral_P.HILInitialize_watchdog_analog_o
	  section.data(28).logicalSrcIdx = 27;
	  section.data(28).dtTransOffset = 119;
	
	  ;% P4p2_integral_P.HILInitialize_watchdog_pwm_outp
	  section.data(29).logicalSrcIdx = 28;
	  section.data(29).dtTransOffset = 120;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(1) = section;
      clear section
      
      section.nData     = 8;
      section.data(8)  = dumData; %prealloc
      
	  ;% P4p2_integral_P.HILReadEncoderTimebase_clock
	  section.data(1).logicalSrcIdx = 29;
	  section.data(1).dtTransOffset = 0;
	
	  ;% P4p2_integral_P.HILInitialize_hardware_clocks
	  section.data(2).logicalSrcIdx = 30;
	  section.data(2).dtTransOffset = 1;
	
	  ;% P4p2_integral_P.HILInitialize_initial_encoder_c
	  section.data(3).logicalSrcIdx = 31;
	  section.data(3).dtTransOffset = 4;
	
	  ;% P4p2_integral_P.HILInitialize_pwm_alignment
	  section.data(4).logicalSrcIdx = 32;
	  section.data(4).dtTransOffset = 5;
	
	  ;% P4p2_integral_P.HILInitialize_pwm_configuration
	  section.data(5).logicalSrcIdx = 33;
	  section.data(5).dtTransOffset = 6;
	
	  ;% P4p2_integral_P.HILInitialize_pwm_modes
	  section.data(6).logicalSrcIdx = 34;
	  section.data(6).dtTransOffset = 7;
	
	  ;% P4p2_integral_P.HILInitialize_pwm_polarity
	  section.data(7).logicalSrcIdx = 35;
	  section.data(7).dtTransOffset = 8;
	
	  ;% P4p2_integral_P.HILInitialize_watchdog_digital_
	  section.data(8).logicalSrcIdx = 36;
	  section.data(8).dtTransOffset = 9;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(2) = section;
      clear section
      
      section.nData     = 8;
      section.data(8)  = dumData; %prealloc
      
	  ;% P4p2_integral_P.HILInitialize_analog_input_chan
	  section.data(1).logicalSrcIdx = 37;
	  section.data(1).dtTransOffset = 0;
	
	  ;% P4p2_integral_P.HILInitialize_analog_output_cha
	  section.data(2).logicalSrcIdx = 38;
	  section.data(2).dtTransOffset = 8;
	
	  ;% P4p2_integral_P.HILReadEncoderTimebase_channels
	  section.data(3).logicalSrcIdx = 39;
	  section.data(3).dtTransOffset = 16;
	
	  ;% P4p2_integral_P.HILWriteAnalog_channels
	  section.data(4).logicalSrcIdx = 40;
	  section.data(4).dtTransOffset = 19;
	
	  ;% P4p2_integral_P.HILInitialize_encoder_channels
	  section.data(5).logicalSrcIdx = 41;
	  section.data(5).dtTransOffset = 21;
	
	  ;% P4p2_integral_P.HILInitialize_pwm_channels
	  section.data(6).logicalSrcIdx = 42;
	  section.data(6).dtTransOffset = 29;
	
	  ;% P4p2_integral_P.HILInitialize_quadrature
	  section.data(7).logicalSrcIdx = 43;
	  section.data(7).dtTransOffset = 37;
	
	  ;% P4p2_integral_P.HILReadEncoderTimebase_samples_
	  section.data(8).logicalSrcIdx = 44;
	  section.data(8).dtTransOffset = 38;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(3) = section;
      clear section
      
      section.nData     = 35;
      section.data(35)  = dumData; %prealloc
      
	  ;% P4p2_integral_P.HILInitialize_active
	  section.data(1).logicalSrcIdx = 45;
	  section.data(1).dtTransOffset = 0;
	
	  ;% P4p2_integral_P.HILInitialize_final_digital_out
	  section.data(2).logicalSrcIdx = 46;
	  section.data(2).dtTransOffset = 1;
	
	  ;% P4p2_integral_P.HILInitialize_initial_digital_o
	  section.data(3).logicalSrcIdx = 47;
	  section.data(3).dtTransOffset = 2;
	
	  ;% P4p2_integral_P.HILInitialize_set_analog_input_
	  section.data(4).logicalSrcIdx = 48;
	  section.data(4).dtTransOffset = 3;
	
	  ;% P4p2_integral_P.HILInitialize_set_analog_inpu_m
	  section.data(5).logicalSrcIdx = 49;
	  section.data(5).dtTransOffset = 4;
	
	  ;% P4p2_integral_P.HILInitialize_set_analog_output
	  section.data(6).logicalSrcIdx = 50;
	  section.data(6).dtTransOffset = 5;
	
	  ;% P4p2_integral_P.HILInitialize_set_analog_outp_b
	  section.data(7).logicalSrcIdx = 51;
	  section.data(7).dtTransOffset = 6;
	
	  ;% P4p2_integral_P.HILInitialize_set_analog_outp_e
	  section.data(8).logicalSrcIdx = 52;
	  section.data(8).dtTransOffset = 7;
	
	  ;% P4p2_integral_P.HILInitialize_set_analog_outp_j
	  section.data(9).logicalSrcIdx = 53;
	  section.data(9).dtTransOffset = 8;
	
	  ;% P4p2_integral_P.HILInitialize_set_analog_outp_c
	  section.data(10).logicalSrcIdx = 54;
	  section.data(10).dtTransOffset = 9;
	
	  ;% P4p2_integral_P.HILInitialize_set_analog_out_ex
	  section.data(11).logicalSrcIdx = 55;
	  section.data(11).dtTransOffset = 10;
	
	  ;% P4p2_integral_P.HILInitialize_set_analog_outp_p
	  section.data(12).logicalSrcIdx = 56;
	  section.data(12).dtTransOffset = 11;
	
	  ;% P4p2_integral_P.HILInitialize_set_clock_frequen
	  section.data(13).logicalSrcIdx = 57;
	  section.data(13).dtTransOffset = 12;
	
	  ;% P4p2_integral_P.HILInitialize_set_clock_frequ_e
	  section.data(14).logicalSrcIdx = 58;
	  section.data(14).dtTransOffset = 13;
	
	  ;% P4p2_integral_P.HILInitialize_set_clock_params_
	  section.data(15).logicalSrcIdx = 59;
	  section.data(15).dtTransOffset = 14;
	
	  ;% P4p2_integral_P.HILInitialize_set_clock_param_c
	  section.data(16).logicalSrcIdx = 60;
	  section.data(16).dtTransOffset = 15;
	
	  ;% P4p2_integral_P.HILInitialize_set_digital_outpu
	  section.data(17).logicalSrcIdx = 61;
	  section.data(17).dtTransOffset = 16;
	
	  ;% P4p2_integral_P.HILInitialize_set_digital_out_b
	  section.data(18).logicalSrcIdx = 62;
	  section.data(18).dtTransOffset = 17;
	
	  ;% P4p2_integral_P.HILInitialize_set_digital_out_c
	  section.data(19).logicalSrcIdx = 63;
	  section.data(19).dtTransOffset = 18;
	
	  ;% P4p2_integral_P.HILInitialize_set_digital_ou_c1
	  section.data(20).logicalSrcIdx = 64;
	  section.data(20).dtTransOffset = 19;
	
	  ;% P4p2_integral_P.HILInitialize_set_digital_out_a
	  section.data(21).logicalSrcIdx = 65;
	  section.data(21).dtTransOffset = 20;
	
	  ;% P4p2_integral_P.HILInitialize_set_digital_out_j
	  section.data(22).logicalSrcIdx = 66;
	  section.data(22).dtTransOffset = 21;
	
	  ;% P4p2_integral_P.HILInitialize_set_digital_out_m
	  section.data(23).logicalSrcIdx = 67;
	  section.data(23).dtTransOffset = 22;
	
	  ;% P4p2_integral_P.HILInitialize_set_encoder_count
	  section.data(24).logicalSrcIdx = 68;
	  section.data(24).dtTransOffset = 23;
	
	  ;% P4p2_integral_P.HILInitialize_set_encoder_cou_k
	  section.data(25).logicalSrcIdx = 69;
	  section.data(25).dtTransOffset = 24;
	
	  ;% P4p2_integral_P.HILInitialize_set_encoder_param
	  section.data(26).logicalSrcIdx = 70;
	  section.data(26).dtTransOffset = 25;
	
	  ;% P4p2_integral_P.HILInitialize_set_encoder_par_m
	  section.data(27).logicalSrcIdx = 71;
	  section.data(27).dtTransOffset = 26;
	
	  ;% P4p2_integral_P.HILInitialize_set_other_outpu_l
	  section.data(28).logicalSrcIdx = 72;
	  section.data(28).dtTransOffset = 27;
	
	  ;% P4p2_integral_P.HILInitialize_set_pwm_outputs_a
	  section.data(29).logicalSrcIdx = 73;
	  section.data(29).dtTransOffset = 28;
	
	  ;% P4p2_integral_P.HILInitialize_set_pwm_outputs_g
	  section.data(30).logicalSrcIdx = 74;
	  section.data(30).dtTransOffset = 29;
	
	  ;% P4p2_integral_P.HILInitialize_set_pwm_outputs_p
	  section.data(31).logicalSrcIdx = 75;
	  section.data(31).dtTransOffset = 30;
	
	  ;% P4p2_integral_P.HILInitialize_set_pwm_output_ap
	  section.data(32).logicalSrcIdx = 76;
	  section.data(32).dtTransOffset = 31;
	
	  ;% P4p2_integral_P.HILInitialize_set_pwm_outputs_o
	  section.data(33).logicalSrcIdx = 77;
	  section.data(33).dtTransOffset = 32;
	
	  ;% P4p2_integral_P.HILInitialize_set_pwm_params_at
	  section.data(34).logicalSrcIdx = 78;
	  section.data(34).dtTransOffset = 33;
	
	  ;% P4p2_integral_P.HILInitialize_set_pwm_params__f
	  section.data(35).logicalSrcIdx = 79;
	  section.data(35).dtTransOffset = 34;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(4) = section;
      clear section
      
      section.nData     = 48;
      section.data(48)  = dumData; %prealloc
      
	  ;% P4p2_integral_P.TravelCounttorad_Gain
	  section.data(1).logicalSrcIdx = 80;
	  section.data(1).dtTransOffset = 0;
	
	  ;% P4p2_integral_P.Gain_Gain
	  section.data(2).logicalSrcIdx = 81;
	  section.data(2).dtTransOffset = 1;
	
	  ;% P4p2_integral_P.TravelTransferFcn_A
	  section.data(3).logicalSrcIdx = 82;
	  section.data(3).dtTransOffset = 2;
	
	  ;% P4p2_integral_P.TravelTransferFcn_C
	  section.data(4).logicalSrcIdx = 83;
	  section.data(4).dtTransOffset = 3;
	
	  ;% P4p2_integral_P.TravelTransferFcn_D
	  section.data(5).logicalSrcIdx = 84;
	  section.data(5).dtTransOffset = 4;
	
	  ;% P4p2_integral_P.Gain_Gain_l
	  section.data(6).logicalSrcIdx = 85;
	  section.data(6).dtTransOffset = 5;
	
	  ;% P4p2_integral_P.PitchCounttorad_Gain
	  section.data(7).logicalSrcIdx = 86;
	  section.data(7).dtTransOffset = 6;
	
	  ;% P4p2_integral_P.Gain_Gain_a
	  section.data(8).logicalSrcIdx = 87;
	  section.data(8).dtTransOffset = 7;
	
	  ;% P4p2_integral_P.PitchTransferFcn_A
	  section.data(9).logicalSrcIdx = 88;
	  section.data(9).dtTransOffset = 8;
	
	  ;% P4p2_integral_P.PitchTransferFcn_C
	  section.data(10).logicalSrcIdx = 89;
	  section.data(10).dtTransOffset = 9;
	
	  ;% P4p2_integral_P.PitchTransferFcn_D
	  section.data(11).logicalSrcIdx = 90;
	  section.data(11).dtTransOffset = 10;
	
	  ;% P4p2_integral_P.Gain_Gain_ae
	  section.data(12).logicalSrcIdx = 91;
	  section.data(12).dtTransOffset = 11;
	
	  ;% P4p2_integral_P.ElevationCounttorad_Gain
	  section.data(13).logicalSrcIdx = 92;
	  section.data(13).dtTransOffset = 12;
	
	  ;% P4p2_integral_P.Gain_Gain_lv
	  section.data(14).logicalSrcIdx = 93;
	  section.data(14).dtTransOffset = 13;
	
	  ;% P4p2_integral_P.ElevationTransferFcn_A
	  section.data(15).logicalSrcIdx = 94;
	  section.data(15).dtTransOffset = 14;
	
	  ;% P4p2_integral_P.ElevationTransferFcn_C
	  section.data(16).logicalSrcIdx = 95;
	  section.data(16).dtTransOffset = 15;
	
	  ;% P4p2_integral_P.ElevationTransferFcn_D
	  section.data(17).logicalSrcIdx = 96;
	  section.data(17).dtTransOffset = 16;
	
	  ;% P4p2_integral_P.Gain_Gain_n
	  section.data(18).logicalSrcIdx = 97;
	  section.data(18).dtTransOffset = 17;
	
	  ;% P4p2_integral_P.Gain4_Gain
	  section.data(19).logicalSrcIdx = 98;
	  section.data(19).dtTransOffset = 18;
	
	  ;% P4p2_integral_P.Integrator5_IC
	  section.data(20).logicalSrcIdx = 99;
	  section.data(20).dtTransOffset = 19;
	
	  ;% P4p2_integral_P.Integrator1_IC
	  section.data(21).logicalSrcIdx = 100;
	  section.data(21).dtTransOffset = 20;
	
	  ;% P4p2_integral_P.Integrator3_IC
	  section.data(22).logicalSrcIdx = 101;
	  section.data(22).dtTransOffset = 21;
	
	  ;% P4p2_integral_P.raddeg_Gain
	  section.data(23).logicalSrcIdx = 102;
	  section.data(23).dtTransOffset = 22;
	
	  ;% P4p2_integral_P.Integrator6_IC
	  section.data(24).logicalSrcIdx = 103;
	  section.data(24).dtTransOffset = 23;
	
	  ;% P4p2_integral_P.Integrator2_IC
	  section.data(25).logicalSrcIdx = 104;
	  section.data(25).dtTransOffset = 24;
	
	  ;% P4p2_integral_P.Integrator4_IC
	  section.data(26).logicalSrcIdx = 105;
	  section.data(26).dtTransOffset = 25;
	
	  ;% P4p2_integral_P.raddeg5_Gain
	  section.data(27).logicalSrcIdx = 106;
	  section.data(27).dtTransOffset = 26;
	
	  ;% P4p2_integral_P.raddeg6_Gain
	  section.data(28).logicalSrcIdx = 107;
	  section.data(28).dtTransOffset = 27;
	
	  ;% P4p2_integral_P.raddeg3_Gain
	  section.data(29).logicalSrcIdx = 108;
	  section.data(29).dtTransOffset = 28;
	
	  ;% P4p2_integral_P.raddeg4_Gain
	  section.data(30).logicalSrcIdx = 109;
	  section.data(30).dtTransOffset = 29;
	
	  ;% P4p2_integral_P.raddeg1_Gain
	  section.data(31).logicalSrcIdx = 110;
	  section.data(31).dtTransOffset = 30;
	
	  ;% P4p2_integral_P.raddeg2_Gain
	  section.data(32).logicalSrcIdx = 111;
	  section.data(32).dtTransOffset = 31;
	
	  ;% P4p2_integral_P.Integrator_IC
	  section.data(33).logicalSrcIdx = 112;
	  section.data(33).dtTransOffset = 32;
	
	  ;% P4p2_integral_P.Integrator1_IC_m
	  section.data(34).logicalSrcIdx = 113;
	  section.data(34).dtTransOffset = 33;
	
	  ;% P4p2_integral_P.RateTransitionx_X0
	  section.data(35).logicalSrcIdx = 114;
	  section.data(35).dtTransOffset = 34;
	
	  ;% P4p2_integral_P.DeadZonex_Start
	  section.data(36).logicalSrcIdx = 115;
	  section.data(36).dtTransOffset = 35;
	
	  ;% P4p2_integral_P.DeadZonex_End
	  section.data(37).logicalSrcIdx = 116;
	  section.data(37).dtTransOffset = 36;
	
	  ;% P4p2_integral_P.Gainx_Gain
	  section.data(38).logicalSrcIdx = 117;
	  section.data(38).dtTransOffset = 37;
	
	  ;% P4p2_integral_P.RateTransitiony_X0
	  section.data(39).logicalSrcIdx = 118;
	  section.data(39).dtTransOffset = 38;
	
	  ;% P4p2_integral_P.DeadZoney_Start
	  section.data(40).logicalSrcIdx = 119;
	  section.data(40).dtTransOffset = 39;
	
	  ;% P4p2_integral_P.DeadZoney_End
	  section.data(41).logicalSrcIdx = 120;
	  section.data(41).dtTransOffset = 40;
	
	  ;% P4p2_integral_P.Gainy_Gain
	  section.data(42).logicalSrcIdx = 121;
	  section.data(42).dtTransOffset = 41;
	
	  ;% P4p2_integral_P.Backgain_Gain
	  section.data(43).logicalSrcIdx = 122;
	  section.data(43).dtTransOffset = 42;
	
	  ;% P4p2_integral_P.Frontgain_Gain
	  section.data(44).logicalSrcIdx = 123;
	  section.data(44).dtTransOffset = 43;
	
	  ;% P4p2_integral_P.FrontmotorSaturation_UpperSat
	  section.data(45).logicalSrcIdx = 124;
	  section.data(45).dtTransOffset = 44;
	
	  ;% P4p2_integral_P.FrontmotorSaturation_LowerSat
	  section.data(46).logicalSrcIdx = 125;
	  section.data(46).dtTransOffset = 45;
	
	  ;% P4p2_integral_P.BackmotorSaturation_UpperSat
	  section.data(47).logicalSrcIdx = 126;
	  section.data(47).dtTransOffset = 46;
	
	  ;% P4p2_integral_P.BackmotorSaturation_LowerSat
	  section.data(48).logicalSrcIdx = 127;
	  section.data(48).dtTransOffset = 47;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(5) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% P4p2_integral_P.GameController_BufferSize
	  section.data(1).logicalSrcIdx = 128;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(6) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% P4p2_integral_P.GameController_ControllerNumber
	  section.data(1).logicalSrcIdx = 129;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(7) = section;
      clear section
      
      section.nData     = 4;
      section.data(4)  = dumData; %prealloc
      
	  ;% P4p2_integral_P.HILReadEncoderTimebase_Active
	  section.data(1).logicalSrcIdx = 130;
	  section.data(1).dtTransOffset = 0;
	
	  ;% P4p2_integral_P.HILWriteAnalog_Active
	  section.data(2).logicalSrcIdx = 131;
	  section.data(2).dtTransOffset = 1;
	
	  ;% P4p2_integral_P.GameController_AutoCenter
	  section.data(3).logicalSrcIdx = 132;
	  section.data(3).dtTransOffset = 2;
	
	  ;% P4p2_integral_P.GameController_Enabled
	  section.data(4).logicalSrcIdx = 133;
	  section.data(4).dtTransOffset = 3;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(8) = section;
      clear section
      
    
      ;%
      ;% Non-auto Data (parameter)
      ;%
    

    ;%
    ;% Add final counts to struct.
    ;%
    paramMap.nTotData = nTotData;
    


  ;%**************************
  ;% Create Block Output Map *
  ;%**************************
      
    nTotData      = 0; %add to this count as we go
    nTotSects     = 1;
    sectIdxOffset = 0;
    
    ;%
    ;% Define dummy sections & preallocate arrays
    ;%
    dumSection.nData = -1;  
    dumSection.data  = [];
    
    dumData.logicalSrcIdx = -1;
    dumData.dtTransOffset = -1;
    
    ;%
    ;% Init/prealloc sigMap
    ;%
    sigMap.nSections           = nTotSects;
    sigMap.sectIdxOffset       = sectIdxOffset;
      sigMap.sections(nTotSects) = dumSection; %prealloc
    sigMap.nTotData            = -1;
    
    ;%
    ;% Auto data (P4p2_integral_B)
    ;%
      section.nData     = 39;
      section.data(39)  = dumData; %prealloc
      
	  ;% P4p2_integral_B.TravelCounttorad
	  section.data(1).logicalSrcIdx = 0;
	  section.data(1).dtTransOffset = 0;
	
	  ;% P4p2_integral_B.Gain
	  section.data(2).logicalSrcIdx = 1;
	  section.data(2).dtTransOffset = 1;
	
	  ;% P4p2_integral_B.Add2
	  section.data(3).logicalSrcIdx = 2;
	  section.data(3).dtTransOffset = 2;
	
	  ;% P4p2_integral_B.Gain_d
	  section.data(4).logicalSrcIdx = 3;
	  section.data(4).dtTransOffset = 3;
	
	  ;% P4p2_integral_B.PitchCounttorad
	  section.data(5).logicalSrcIdx = 4;
	  section.data(5).dtTransOffset = 4;
	
	  ;% P4p2_integral_B.Gain_i
	  section.data(6).logicalSrcIdx = 5;
	  section.data(6).dtTransOffset = 5;
	
	  ;% P4p2_integral_B.Add3
	  section.data(7).logicalSrcIdx = 6;
	  section.data(7).dtTransOffset = 6;
	
	  ;% P4p2_integral_B.Gain_b
	  section.data(8).logicalSrcIdx = 7;
	  section.data(8).dtTransOffset = 7;
	
	  ;% P4p2_integral_B.ElevationCounttorad
	  section.data(9).logicalSrcIdx = 8;
	  section.data(9).dtTransOffset = 8;
	
	  ;% P4p2_integral_B.Gain_e
	  section.data(10).logicalSrcIdx = 9;
	  section.data(10).dtTransOffset = 9;
	
	  ;% P4p2_integral_B.Add1
	  section.data(11).logicalSrcIdx = 10;
	  section.data(11).dtTransOffset = 10;
	
	  ;% P4p2_integral_B.Gain_dg
	  section.data(12).logicalSrcIdx = 11;
	  section.data(12).dtTransOffset = 11;
	
	  ;% P4p2_integral_B.Integrator5
	  section.data(13).logicalSrcIdx = 12;
	  section.data(13).dtTransOffset = 12;
	
	  ;% P4p2_integral_B.Integrator3
	  section.data(14).logicalSrcIdx = 13;
	  section.data(14).dtTransOffset = 13;
	
	  ;% P4p2_integral_B.raddeg
	  section.data(15).logicalSrcIdx = 14;
	  section.data(15).dtTransOffset = 14;
	
	  ;% P4p2_integral_B.Integrator6
	  section.data(16).logicalSrcIdx = 15;
	  section.data(16).dtTransOffset = 20;
	
	  ;% P4p2_integral_B.Sum
	  section.data(17).logicalSrcIdx = 16;
	  section.data(17).dtTransOffset = 21;
	
	  ;% P4p2_integral_B.raddeg5
	  section.data(18).logicalSrcIdx = 17;
	  section.data(18).dtTransOffset = 27;
	
	  ;% P4p2_integral_B.raddeg6
	  section.data(19).logicalSrcIdx = 18;
	  section.data(19).dtTransOffset = 29;
	
	  ;% P4p2_integral_B.raddeg3
	  section.data(20).logicalSrcIdx = 19;
	  section.data(20).dtTransOffset = 31;
	
	  ;% P4p2_integral_B.raddeg4
	  section.data(21).logicalSrcIdx = 20;
	  section.data(21).dtTransOffset = 33;
	
	  ;% P4p2_integral_B.raddeg1
	  section.data(22).logicalSrcIdx = 21;
	  section.data(22).dtTransOffset = 35;
	
	  ;% P4p2_integral_B.raddeg2
	  section.data(23).logicalSrcIdx = 22;
	  section.data(23).dtTransOffset = 37;
	
	  ;% P4p2_integral_B.RateTransitionx
	  section.data(24).logicalSrcIdx = 23;
	  section.data(24).dtTransOffset = 39;
	
	  ;% P4p2_integral_B.Joystick_gain_x
	  section.data(25).logicalSrcIdx = 24;
	  section.data(25).dtTransOffset = 40;
	
	  ;% P4p2_integral_B.Gain_j
	  section.data(26).logicalSrcIdx = 25;
	  section.data(26).dtTransOffset = 41;
	
	  ;% P4p2_integral_B.RateTransitiony
	  section.data(27).logicalSrcIdx = 26;
	  section.data(27).dtTransOffset = 42;
	
	  ;% P4p2_integral_B.Joystick_gain_y
	  section.data(28).logicalSrcIdx = 27;
	  section.data(28).dtTransOffset = 43;
	
	  ;% P4p2_integral_B.Gain1
	  section.data(29).logicalSrcIdx = 28;
	  section.data(29).dtTransOffset = 44;
	
	  ;% P4p2_integral_B.P
	  section.data(30).logicalSrcIdx = 29;
	  section.data(30).dtTransOffset = 45;
	
	  ;% P4p2_integral_B.V_meas
	  section.data(31).logicalSrcIdx = 30;
	  section.data(31).dtTransOffset = 47;
	
	  ;% P4p2_integral_B.Sum2
	  section.data(32).logicalSrcIdx = 31;
	  section.data(32).dtTransOffset = 48;
	
	  ;% P4p2_integral_B.Sum3
	  section.data(33).logicalSrcIdx = 32;
	  section.data(33).dtTransOffset = 49;
	
	  ;% P4p2_integral_B.Constant
	  section.data(34).logicalSrcIdx = 33;
	  section.data(34).dtTransOffset = 50;
	
	  ;% P4p2_integral_B.Sum1
	  section.data(35).logicalSrcIdx = 34;
	  section.data(35).dtTransOffset = 51;
	
	  ;% P4p2_integral_B.FrontmotorSaturation
	  section.data(36).logicalSrcIdx = 35;
	  section.data(36).dtTransOffset = 57;
	
	  ;% P4p2_integral_B.BackmotorSaturation
	  section.data(37).logicalSrcIdx = 36;
	  section.data(37).dtTransOffset = 58;
	
	  ;% P4p2_integral_B.GameController_o4
	  section.data(38).logicalSrcIdx = 37;
	  section.data(38).dtTransOffset = 59;
	
	  ;% P4p2_integral_B.GameController_o5
	  section.data(39).logicalSrcIdx = 38;
	  section.data(39).dtTransOffset = 60;
	
      nTotData = nTotData + section.nData;
      sigMap.sections(1) = section;
      clear section
      
    
      ;%
      ;% Non-auto Data (signal)
      ;%
    

    ;%
    ;% Add final counts to struct.
    ;%
    sigMap.nTotData = nTotData;
    


  ;%*******************
  ;% Create DWork Map *
  ;%*******************
      
    nTotData      = 0; %add to this count as we go
    nTotSects     = 7;
    sectIdxOffset = 1;
    
    ;%
    ;% Define dummy sections & preallocate arrays
    ;%
    dumSection.nData = -1;  
    dumSection.data  = [];
    
    dumData.logicalSrcIdx = -1;
    dumData.dtTransOffset = -1;
    
    ;%
    ;% Init/prealloc dworkMap
    ;%
    dworkMap.nSections           = nTotSects;
    dworkMap.sectIdxOffset       = sectIdxOffset;
      dworkMap.sections(nTotSects) = dumSection; %prealloc
    dworkMap.nTotData            = -1;
    
    ;%
    ;% Auto data (P4p2_integral_DW)
    ;%
      section.nData     = 11;
      section.data(11)  = dumData; %prealloc
      
	  ;% P4p2_integral_DW.HILInitialize_AIMinimums
	  section.data(1).logicalSrcIdx = 0;
	  section.data(1).dtTransOffset = 0;
	
	  ;% P4p2_integral_DW.HILInitialize_AIMaximums
	  section.data(2).logicalSrcIdx = 1;
	  section.data(2).dtTransOffset = 8;
	
	  ;% P4p2_integral_DW.HILInitialize_AOMinimums
	  section.data(3).logicalSrcIdx = 2;
	  section.data(3).dtTransOffset = 16;
	
	  ;% P4p2_integral_DW.HILInitialize_AOMaximums
	  section.data(4).logicalSrcIdx = 3;
	  section.data(4).dtTransOffset = 24;
	
	  ;% P4p2_integral_DW.HILInitialize_AOVoltages
	  section.data(5).logicalSrcIdx = 4;
	  section.data(5).dtTransOffset = 32;
	
	  ;% P4p2_integral_DW.HILInitialize_FilterFrequency
	  section.data(6).logicalSrcIdx = 5;
	  section.data(6).dtTransOffset = 40;
	
	  ;% P4p2_integral_DW.HILInitialize_POSortedFreqs
	  section.data(7).logicalSrcIdx = 6;
	  section.data(7).dtTransOffset = 48;
	
	  ;% P4p2_integral_DW.HILInitialize_POValues
	  section.data(8).logicalSrcIdx = 7;
	  section.data(8).dtTransOffset = 56;
	
	  ;% P4p2_integral_DW.RateTransitionx_Buffer0
	  section.data(9).logicalSrcIdx = 8;
	  section.data(9).dtTransOffset = 64;
	
	  ;% P4p2_integral_DW.RateTransitiony_Buffer0
	  section.data(10).logicalSrcIdx = 9;
	  section.data(10).dtTransOffset = 65;
	
	  ;% P4p2_integral_DW.HILWriteAnalog_Buffer
	  section.data(11).logicalSrcIdx = 10;
	  section.data(11).dtTransOffset = 66;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(1) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% P4p2_integral_DW.GameController_Controller
	  section.data(1).logicalSrcIdx = 11;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(2) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% P4p2_integral_DW.HILInitialize_Card
	  section.data(1).logicalSrcIdx = 12;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(3) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% P4p2_integral_DW.HILReadEncoderTimebase_Task
	  section.data(1).logicalSrcIdx = 13;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(4) = section;
      clear section
      
      section.nData     = 26;
      section.data(26)  = dumData; %prealloc
      
	  ;% P4p2_integral_DW.Scope3_PWORK.LoggedData
	  section.data(1).logicalSrcIdx = 14;
	  section.data(1).dtTransOffset = 0;
	
	  ;% P4p2_integral_DW.ToWorkspace3_PWORK.LoggedData
	  section.data(2).logicalSrcIdx = 15;
	  section.data(2).dtTransOffset = 1;
	
	  ;% P4p2_integral_DW.Elevation_PWORK.LoggedData
	  section.data(3).logicalSrcIdx = 16;
	  section.data(3).dtTransOffset = 2;
	
	  ;% P4p2_integral_DW.Elevationrate_PWORK.LoggedData
	  section.data(4).logicalSrcIdx = 17;
	  section.data(4).dtTransOffset = 3;
	
	  ;% P4p2_integral_DW.Pitch_PWORK.LoggedData
	  section.data(5).logicalSrcIdx = 18;
	  section.data(5).dtTransOffset = 4;
	
	  ;% P4p2_integral_DW.Pitchrate_PWORK.LoggedData
	  section.data(6).logicalSrcIdx = 19;
	  section.data(6).dtTransOffset = 5;
	
	  ;% P4p2_integral_DW.ToWorkspace_PWORK.LoggedData
	  section.data(7).logicalSrcIdx = 20;
	  section.data(7).dtTransOffset = 6;
	
	  ;% P4p2_integral_DW.ToWorkspace1_PWORK.LoggedData
	  section.data(8).logicalSrcIdx = 21;
	  section.data(8).dtTransOffset = 7;
	
	  ;% P4p2_integral_DW.ToWorkspace2_PWORK.LoggedData
	  section.data(9).logicalSrcIdx = 22;
	  section.data(9).dtTransOffset = 8;
	
	  ;% P4p2_integral_DW.ToWorkspace3_PWORK_j.LoggedData
	  section.data(10).logicalSrcIdx = 23;
	  section.data(10).dtTransOffset = 9;
	
	  ;% P4p2_integral_DW.ToWorkspace4_PWORK.LoggedData
	  section.data(11).logicalSrcIdx = 24;
	  section.data(11).dtTransOffset = 10;
	
	  ;% P4p2_integral_DW.ToWorkspace5_PWORK.LoggedData
	  section.data(12).logicalSrcIdx = 25;
	  section.data(12).dtTransOffset = 11;
	
	  ;% P4p2_integral_DW.Travel_PWORK.LoggedData
	  section.data(13).logicalSrcIdx = 26;
	  section.data(13).dtTransOffset = 12;
	
	  ;% P4p2_integral_DW.Travelrate_PWORK.LoggedData
	  section.data(14).logicalSrcIdx = 27;
	  section.data(14).dtTransOffset = 13;
	
	  ;% P4p2_integral_DW.Scope_PWORK.LoggedData
	  section.data(15).logicalSrcIdx = 28;
	  section.data(15).dtTransOffset = 14;
	
	  ;% P4p2_integral_DW.Scope1_PWORK.LoggedData
	  section.data(16).logicalSrcIdx = 29;
	  section.data(16).dtTransOffset = 15;
	
	  ;% P4p2_integral_DW.Scope2_PWORK.LoggedData
	  section.data(17).logicalSrcIdx = 30;
	  section.data(17).dtTransOffset = 16;
	
	  ;% P4p2_integral_DW.ElevationScopedegs_PWORK.LoggedData
	  section.data(18).logicalSrcIdx = 31;
	  section.data(18).dtTransOffset = 17;
	
	  ;% P4p2_integral_DW.ElevationScopedeg_PWORK.LoggedData
	  section.data(19).logicalSrcIdx = 32;
	  section.data(19).dtTransOffset = 18;
	
	  ;% P4p2_integral_DW.PitchScopedeg_PWORK.LoggedData
	  section.data(20).logicalSrcIdx = 33;
	  section.data(20).dtTransOffset = 19;
	
	  ;% P4p2_integral_DW.PtichrateScopedegs_PWORK.LoggedData
	  section.data(21).logicalSrcIdx = 34;
	  section.data(21).dtTransOffset = 20;
	
	  ;% P4p2_integral_DW.TravelrateScopedegs_PWORK.LoggedData
	  section.data(22).logicalSrcIdx = 35;
	  section.data(22).dtTransOffset = 21;
	
	  ;% P4p2_integral_DW.TravelScopedeg_PWORK.LoggedData
	  section.data(23).logicalSrcIdx = 36;
	  section.data(23).dtTransOffset = 22;
	
	  ;% P4p2_integral_DW.HILWriteAnalog_PWORK
	  section.data(24).logicalSrcIdx = 37;
	  section.data(24).dtTransOffset = 23;
	
	  ;% P4p2_integral_DW.XScope_PWORK.LoggedData
	  section.data(25).logicalSrcIdx = 38;
	  section.data(25).dtTransOffset = 24;
	
	  ;% P4p2_integral_DW.YScope_PWORK.LoggedData
	  section.data(26).logicalSrcIdx = 39;
	  section.data(26).dtTransOffset = 25;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(5) = section;
      clear section
      
      section.nData     = 7;
      section.data(7)  = dumData; %prealloc
      
	  ;% P4p2_integral_DW.HILInitialize_ClockModes
	  section.data(1).logicalSrcIdx = 40;
	  section.data(1).dtTransOffset = 0;
	
	  ;% P4p2_integral_DW.HILInitialize_QuadratureModes
	  section.data(2).logicalSrcIdx = 41;
	  section.data(2).dtTransOffset = 3;
	
	  ;% P4p2_integral_DW.HILInitialize_InitialEICounts
	  section.data(3).logicalSrcIdx = 42;
	  section.data(3).dtTransOffset = 11;
	
	  ;% P4p2_integral_DW.HILInitialize_POModeValues
	  section.data(4).logicalSrcIdx = 43;
	  section.data(4).dtTransOffset = 19;
	
	  ;% P4p2_integral_DW.HILInitialize_POAlignValues
	  section.data(5).logicalSrcIdx = 44;
	  section.data(5).dtTransOffset = 27;
	
	  ;% P4p2_integral_DW.HILInitialize_POPolarityVals
	  section.data(6).logicalSrcIdx = 45;
	  section.data(6).dtTransOffset = 35;
	
	  ;% P4p2_integral_DW.HILReadEncoderTimebase_Buffer
	  section.data(7).logicalSrcIdx = 46;
	  section.data(7).dtTransOffset = 43;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(6) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% P4p2_integral_DW.HILInitialize_POSortedChans
	  section.data(1).logicalSrcIdx = 47;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(7) = section;
      clear section
      
    
      ;%
      ;% Non-auto Data (dwork)
      ;%
    

    ;%
    ;% Add final counts to struct.
    ;%
    dworkMap.nTotData = nTotData;
    


  ;%
  ;% Add individual maps to base struct.
  ;%

  targMap.paramMap  = paramMap;    
  targMap.signalMap = sigMap;
  targMap.dworkMap  = dworkMap;
  
  ;%
  ;% Add checksums to base struct.
  ;%


  targMap.checksum0 = 1628656500;
  targMap.checksum1 = 1134373048;
  targMap.checksum2 = 2270857550;
  targMap.checksum3 = 919082566;

