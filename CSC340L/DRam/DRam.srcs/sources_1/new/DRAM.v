`timescale 1ns / 1ps

//8-bit SRAM using 8 D-Latches
module SRAM(
  input DATA_00,
  input DATA_01,
  input DATA_02,
  input DATA_03,
  input DATA_04,
  input DATA_05,
  input DATA_06,
  input DATA_07,
  
  input CLOCK,
  
  output DOUT_00,
  output DOUT_01,
  output DOUT_02,
  output DOUT_03,
  output DOUT_04,
  output DOUT_05,
  output DOUT_06,
  output DOUT_07
    );
    
    D_Latch dl_00(.D(DATA_00), .ENABLE(CLOCK), .Q(DOUT_00), .NOT_Q()  );
    D_Latch dl_01(.D(DATA_01), .ENABLE(CLOCK), .Q(DOUT_01), .NOT_Q()  );
    D_Latch dl_02(.D(DATA_02), .ENABLE(CLOCK), .Q(DOUT_02), .NOT_Q()  );
    D_Latch dl_03(.D(DATA_03), .ENABLE(CLOCK), .Q(DOUT_03), .NOT_Q()  );
    D_Latch dl_04(.D(DATA_04), .ENABLE(CLOCK), .Q(DOUT_04), .NOT_Q()  );
    D_Latch dl_05(.D(DATA_05), .ENABLE(CLOCK), .Q(DOUT_05), .NOT_Q()  );
    D_Latch dl_06(.D(DATA_06), .ENABLE(CLOCK), .Q(DOUT_06), .NOT_Q()  );
    D_Latch dl_07(.D(DATA_07), .ENABLE(CLOCK), .Q(DOUT_07), .NOT_Q()  );
endmodule
