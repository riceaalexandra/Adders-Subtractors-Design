--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: J.40
--  \   \         Application: netgen
--  /   /         Filename: sum4_timesim.vhd
-- /___/   /\     Timestamp: Mon Mar 06 21:43:08 2023
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 4 -pcf sum4.pcf -rpw 100 -tpw 0 -ar Structure -tm sum4 -insert_pp_buffers false -w -dir netgen/par -ofmt vhdl -sim sum4.ncd sum4_timesim.vhd 
-- Device	: 3s400ft256-4 (PRODUCTION 1.39 2007-10-19)
-- Input file	: sum4.ncd
-- Output file	: D:\SOC\as4\netgen\par\sum4_timesim.vhd
-- # of Entities	: 1
-- Design Name	: sum4
-- Xilinx	: C:\Xilinx92i
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Development System Reference Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

entity sum4 is
  port (
    Co : out STD_LOGIC; 
    r : out STD_LOGIC_VECTOR ( 3 downto 0 ); 
    a : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
    b : in STD_LOGIC_VECTOR ( 3 downto 0 ) 
  );
end sum4;

architecture Structure of sum4 is
  signal a_0_IBUF_0 : STD_LOGIC; 
  signal a_1_IBUF_1 : STD_LOGIC; 
  signal a_2_IBUF_2 : STD_LOGIC; 
  signal a_3_IBUF_3 : STD_LOGIC; 
  signal b_0_IBUF_4 : STD_LOGIC; 
  signal b_1_IBUF_5 : STD_LOGIC; 
  signal b_2_IBUF_6 : STD_LOGIC; 
  signal b_3_IBUF_7 : STD_LOGIC; 
  signal XLXN_3 : STD_LOGIC; 
  signal XLXN_4 : STD_LOGIC; 
  signal r_2_O : STD_LOGIC; 
  signal r_3_O : STD_LOGIC; 
  signal Co_O : STD_LOGIC; 
  signal a_0_INBUF : STD_LOGIC; 
  signal a_1_INBUF : STD_LOGIC; 
  signal a_2_INBUF : STD_LOGIC; 
  signal a_3_INBUF : STD_LOGIC; 
  signal b_0_INBUF : STD_LOGIC; 
  signal b_1_INBUF : STD_LOGIC; 
  signal b_2_INBUF : STD_LOGIC; 
  signal b_3_INBUF : STD_LOGIC; 
  signal r_0_O : STD_LOGIC; 
  signal r_1_O : STD_LOGIC; 
  signal Co_OBUF_8 : STD_LOGIC; 
  signal XLXN_3_pack_1 : STD_LOGIC; 
  signal r_0_OBUF_9 : STD_LOGIC; 
  signal r_1_OBUF_10 : STD_LOGIC; 
  signal r_2_OBUF_11 : STD_LOGIC; 
  signal XLXN_4_pack_1 : STD_LOGIC; 
  signal r_3_OBUF_12 : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
begin
  r_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD216"
    )
    port map (
      I => r_2_O,
      O => r(2)
    );
  r_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD90"
    )
    port map (
      I => r_3_O,
      O => r(3)
    );
  Co_OBUF : X_OBUF
    generic map(
      LOC => "PAD98"
    )
    port map (
      I => Co_O,
      O => Co
    );
  a_0_IBUF : X_BUF
    generic map(
      LOC => "PAD214",
      PATHPULSE => 757 ps
    )
    port map (
      I => a(0),
      O => a_0_INBUF
    );
  a_0_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD214",
      PATHPULSE => 757 ps
    )
    port map (
      I => a_0_INBUF,
      O => a_0_IBUF_0
    );
  a_1_IBUF : X_BUF
    generic map(
      LOC => "PAD213",
      PATHPULSE => 757 ps
    )
    port map (
      I => a(1),
      O => a_1_INBUF
    );
  a_1_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD213",
      PATHPULSE => 757 ps
    )
    port map (
      I => a_1_INBUF,
      O => a_1_IBUF_1
    );
  a_2_IBUF : X_BUF
    generic map(
      LOC => "PAD99",
      PATHPULSE => 757 ps
    )
    port map (
      I => a(2),
      O => a_2_INBUF
    );
  a_2_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD99",
      PATHPULSE => 757 ps
    )
    port map (
      I => a_2_INBUF,
      O => a_2_IBUF_2
    );
  a_3_IBUF : X_BUF
    generic map(
      LOC => "PAD89",
      PATHPULSE => 757 ps
    )
    port map (
      I => a(3),
      O => a_3_INBUF
    );
  a_3_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD89",
      PATHPULSE => 757 ps
    )
    port map (
      I => a_3_INBUF,
      O => a_3_IBUF_3
    );
  b_0_IBUF : X_BUF
    generic map(
      LOC => "PAD218",
      PATHPULSE => 757 ps
    )
    port map (
      I => b(0),
      O => b_0_INBUF
    );
  b_0_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD218",
      PATHPULSE => 757 ps
    )
    port map (
      I => b_0_INBUF,
      O => b_0_IBUF_4
    );
  b_1_IBUF : X_BUF
    generic map(
      LOC => "PAD217",
      PATHPULSE => 757 ps
    )
    port map (
      I => b(1),
      O => b_1_INBUF
    );
  b_1_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD217",
      PATHPULSE => 757 ps
    )
    port map (
      I => b_1_INBUF,
      O => b_1_IBUF_5
    );
  b_2_IBUF : X_BUF
    generic map(
      LOC => "PAD100",
      PATHPULSE => 757 ps
    )
    port map (
      I => b(2),
      O => b_2_INBUF
    );
  b_2_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD100",
      PATHPULSE => 757 ps
    )
    port map (
      I => b_2_INBUF,
      O => b_2_IBUF_6
    );
  b_3_IBUF : X_BUF
    generic map(
      LOC => "PAD102",
      PATHPULSE => 757 ps
    )
    port map (
      I => b(3),
      O => b_3_INBUF
    );
  b_3_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD102",
      PATHPULSE => 757 ps
    )
    port map (
      I => b_3_INBUF,
      O => b_3_IBUF_7
    );
  r_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD196"
    )
    port map (
      I => r_0_O,
      O => r(0)
    );
  r_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD197"
    )
    port map (
      I => r_1_O,
      O => r(1)
    );
  Co_OBUF_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X54Y35",
      PATHPULSE => 757 ps
    )
    port map (
      I => XLXN_3_pack_1,
      O => XLXN_3
    );
  XLXI_2_XLXI_3 : X_LUT4
    generic map(
      INIT => X"FCC0",
      LOC => "SLICE_X54Y35"
    )
    port map (
      ADR0 => VCC,
      ADR1 => a_2_IBUF_2,
      ADR2 => XLXN_4,
      ADR3 => b_2_IBUF_6,
      O => XLXN_3_pack_1
    );
  XLXI_3_XLXI_1 : X_LUT4
    generic map(
      INIT => X"8778",
      LOC => "SLICE_X7Y8"
    )
    port map (
      ADR0 => b_0_IBUF_4,
      ADR1 => a_0_IBUF_0,
      ADR2 => a_1_IBUF_1,
      ADR3 => b_1_IBUF_5,
      O => r_1_OBUF_10
    );
  r_2_OBUF_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X7Y13",
      PATHPULSE => 757 ps
    )
    port map (
      I => XLXN_4_pack_1,
      O => XLXN_4
    );
  XLXI_3_XLXI_3 : X_LUT4
    generic map(
      INIT => X"F880",
      LOC => "SLICE_X7Y13"
    )
    port map (
      ADR0 => b_0_IBUF_4,
      ADR1 => a_0_IBUF_0,
      ADR2 => b_1_IBUF_5,
      ADR3 => a_1_IBUF_1,
      O => XLXN_4_pack_1
    );
  XLXI_1_XLXI_1 : X_LUT4
    generic map(
      INIT => X"C33C",
      LOC => "SLICE_X54Y34"
    )
    port map (
      ADR0 => VCC,
      ADR1 => a_3_IBUF_3,
      ADR2 => XLXN_3,
      ADR3 => b_3_IBUF_7,
      O => r_3_OBUF_12
    );
  XLXI_1_XLXI_3 : X_LUT4
    generic map(
      INIT => X"FCC0",
      LOC => "SLICE_X54Y35"
    )
    port map (
      ADR0 => VCC,
      ADR1 => a_3_IBUF_3,
      ADR2 => XLXN_3,
      ADR3 => b_3_IBUF_7,
      O => Co_OBUF_8
    );
  XLXI_4_XLXI_1 : X_LUT4
    generic map(
      INIT => X"6666",
      LOC => "SLICE_X7Y8"
    )
    port map (
      ADR0 => b_0_IBUF_4,
      ADR1 => a_0_IBUF_0,
      ADR2 => VCC,
      ADR3 => VCC,
      O => r_0_OBUF_9
    );
  XLXI_2_XLXI_1 : X_LUT4
    generic map(
      INIT => X"C33C",
      LOC => "SLICE_X7Y13"
    )
    port map (
      ADR0 => VCC,
      ADR1 => a_2_IBUF_2,
      ADR2 => b_2_IBUF_6,
      ADR3 => XLXN_4,
      O => r_2_OBUF_11
    );
  r_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD216",
      PATHPULSE => 757 ps
    )
    port map (
      I => r_2_OBUF_11,
      O => r_2_O
    );
  r_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD90",
      PATHPULSE => 757 ps
    )
    port map (
      I => r_3_OBUF_12,
      O => r_3_O
    );
  Co_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD98",
      PATHPULSE => 757 ps
    )
    port map (
      I => Co_OBUF_8,
      O => Co_O
    );
  r_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD196",
      PATHPULSE => 757 ps
    )
    port map (
      I => r_0_OBUF_9,
      O => r_0_O
    );
  r_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD197",
      PATHPULSE => 757 ps
    )
    port map (
      I => r_1_OBUF_10,
      O => r_1_O
    );
  NlwBlock_sum4_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

