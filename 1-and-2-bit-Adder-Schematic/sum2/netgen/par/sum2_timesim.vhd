--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: J.40
--  \   \         Application: netgen
--  /   /         Filename: sum2_timesim.vhd
-- /___/   /\     Timestamp: Sat Mar 04 23:10:56 2023
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 4 -pcf sum2.pcf -rpw 100 -tpw 0 -ar Structure -tm sum2 -insert_pp_buffers false -w -dir netgen/par -ofmt vhdl -sim sum2.ncd sum2_timesim.vhd 
-- Device	: 3s400ft256-4 (PRODUCTION 1.39 2007-10-19)
-- Input file	: sum2.ncd
-- Output file	: D:\SOC\sum2\netgen\par\sum2_timesim.vhd
-- # of Entities	: 1
-- Design Name	: sum2
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

entity sum2 is
  port (
    Co : out STD_LOGIC; 
    r : out STD_LOGIC_VECTOR ( 1 downto 0 ); 
    a : in STD_LOGIC_VECTOR ( 1 downto 0 ); 
    b : in STD_LOGIC_VECTOR ( 1 downto 0 ) 
  );
end sum2;

architecture Structure of sum2 is
  signal a_0_IBUF_0 : STD_LOGIC; 
  signal a_1_IBUF_1 : STD_LOGIC; 
  signal b_0_IBUF_2 : STD_LOGIC; 
  signal b_1_IBUF_3 : STD_LOGIC; 
  signal Co_O : STD_LOGIC; 
  signal a_0_INBUF : STD_LOGIC; 
  signal a_1_INBUF : STD_LOGIC; 
  signal b_0_INBUF : STD_LOGIC; 
  signal b_1_INBUF : STD_LOGIC; 
  signal r_0_O : STD_LOGIC; 
  signal r_1_O : STD_LOGIC; 
  signal r_1_OBUF_4 : STD_LOGIC; 
  signal r_0_OBUF_5 : STD_LOGIC; 
  signal Co_OBUF_6 : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
begin
  Co_OBUF : X_OBUF
    generic map(
      LOC => "PAD133"
    )
    port map (
      I => Co_O,
      O => Co
    );
  a_0_IBUF : X_BUF
    generic map(
      LOC => "PAD130",
      PATHPULSE => 757 ps
    )
    port map (
      I => a(0),
      O => a_0_INBUF
    );
  a_0_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD130",
      PATHPULSE => 757 ps
    )
    port map (
      I => a_0_INBUF,
      O => a_0_IBUF_0
    );
  a_1_IBUF : X_BUF
    generic map(
      LOC => "PAD129",
      PATHPULSE => 757 ps
    )
    port map (
      I => a(1),
      O => a_1_INBUF
    );
  a_1_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD129",
      PATHPULSE => 757 ps
    )
    port map (
      I => a_1_INBUF,
      O => a_1_IBUF_1
    );
  b_0_IBUF : X_BUF
    generic map(
      LOC => "PAD134",
      PATHPULSE => 757 ps
    )
    port map (
      I => b(0),
      O => b_0_INBUF
    );
  b_0_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD134",
      PATHPULSE => 757 ps
    )
    port map (
      I => b_0_INBUF,
      O => b_0_IBUF_2
    );
  b_1_IBUF : X_BUF
    generic map(
      LOC => "PAD135",
      PATHPULSE => 757 ps
    )
    port map (
      I => b(1),
      O => b_1_INBUF
    );
  b_1_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD135",
      PATHPULSE => 757 ps
    )
    port map (
      I => b_1_INBUF,
      O => b_1_IBUF_3
    );
  r_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD137"
    )
    port map (
      I => r_0_O,
      O => r(0)
    );
  r_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD136"
    )
    port map (
      I => r_1_O,
      O => r(1)
    );
  XLXI_2_XLXI_1 : X_LUT4
    generic map(
      INIT => X"0FF0",
      LOC => "SLICE_X54Y0"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => b_0_IBUF_2,
      ADR3 => a_0_IBUF_0,
      O => r_0_OBUF_5
    );
  XLXI_1_XLXI_3 : X_LUT4
    generic map(
      INIT => X"E888",
      LOC => "SLICE_X54Y1"
    )
    port map (
      ADR0 => b_1_IBUF_3,
      ADR1 => a_1_IBUF_1,
      ADR2 => b_0_IBUF_2,
      ADR3 => a_0_IBUF_0,
      O => Co_OBUF_6
    );
  XLXI_1_XLXI_1 : X_LUT4
    generic map(
      INIT => X"9666",
      LOC => "SLICE_X54Y0"
    )
    port map (
      ADR0 => b_1_IBUF_3,
      ADR1 => a_1_IBUF_1,
      ADR2 => b_0_IBUF_2,
      ADR3 => a_0_IBUF_0,
      O => r_1_OBUF_4
    );
  Co_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD133",
      PATHPULSE => 757 ps
    )
    port map (
      I => Co_OBUF_6,
      O => Co_O
    );
  r_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD137",
      PATHPULSE => 757 ps
    )
    port map (
      I => r_0_OBUF_5,
      O => r_0_O
    );
  r_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD136",
      PATHPULSE => 757 ps
    )
    port map (
      I => r_1_OBUF_4,
      O => r_1_O
    );
  NlwBlock_sum2_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

