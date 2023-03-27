--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: J.40
--  \   \         Application: netgen
--  /   /         Filename: as4_timesim.vhd
-- /___/   /\     Timestamp: Mon Mar 06 23:07:00 2023
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 4 -pcf as4.pcf -rpw 100 -tpw 0 -ar Structure -tm as4 -insert_pp_buffers false -w -dir netgen/par -ofmt vhdl -sim as4.ncd as4_timesim.vhd 
-- Device	: 3s400ft256-4 (PRODUCTION 1.39 2007-10-19)
-- Input file	: as4.ncd
-- Output file	: D:\SOC\as4\netgen\par\as4_timesim.vhd
-- # of Entities	: 1
-- Design Name	: as4
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

entity as4 is
  port (
    S1A0 : in STD_LOGIC := 'X'; 
    Co : out STD_LOGIC; 
    R : out STD_LOGIC_VECTOR ( 3 downto 0 ); 
    A : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
    B : in STD_LOGIC_VECTOR ( 3 downto 0 ) 
  );
end as4;

architecture Structure of as4 is
  signal A_0_IBUF_0 : STD_LOGIC; 
  signal A_1_IBUF_1 : STD_LOGIC; 
  signal A_2_IBUF_2 : STD_LOGIC; 
  signal A_3_IBUF_3 : STD_LOGIC; 
  signal B_0_IBUF_4 : STD_LOGIC; 
  signal B_1_IBUF_5 : STD_LOGIC; 
  signal B_2_IBUF_6 : STD_LOGIC; 
  signal B_3_IBUF_7 : STD_LOGIC; 
  signal S1A0_IBUF_8 : STD_LOGIC; 
  signal XLXI_32_XLXN_5 : STD_LOGIC; 
  signal XLXI_32_XLXN_4_0 : STD_LOGIC; 
  signal XLXI_32_XLXN_3 : STD_LOGIC; 
  signal A_0_INBUF : STD_LOGIC; 
  signal A_1_INBUF : STD_LOGIC; 
  signal A_2_INBUF : STD_LOGIC; 
  signal A_3_INBUF : STD_LOGIC; 
  signal B_0_INBUF : STD_LOGIC; 
  signal B_1_INBUF : STD_LOGIC; 
  signal B_2_INBUF : STD_LOGIC; 
  signal B_3_INBUF : STD_LOGIC; 
  signal S1A0_INBUF : STD_LOGIC; 
  signal Co_O : STD_LOGIC; 
  signal R_0_O : STD_LOGIC; 
  signal R_1_O : STD_LOGIC; 
  signal R_2_O : STD_LOGIC; 
  signal R_3_O : STD_LOGIC; 
  signal R_0_OBUF_9 : STD_LOGIC; 
  signal XLXI_32_XLXN_4 : STD_LOGIC; 
  signal XLXI_32_XLXN_5_pack_1 : STD_LOGIC; 
  signal R_1_OBUF_10 : STD_LOGIC; 
  signal Co_OBUF_11 : STD_LOGIC; 
  signal R_2_OBUF_12 : STD_LOGIC; 
  signal R_3_OBUF_13 : STD_LOGIC; 
  signal XLXI_32_XLXN_3_pack_1 : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
begin
  A_0_IBUF : X_BUF
    generic map(
      LOC => "PAD75",
      PATHPULSE => 757 ps
    )
    port map (
      I => A(0),
      O => A_0_INBUF
    );
  A_0_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD75",
      PATHPULSE => 757 ps
    )
    port map (
      I => A_0_INBUF,
      O => A_0_IBUF_0
    );
  A_1_IBUF : X_BUF
    generic map(
      LOC => "PAD241",
      PATHPULSE => 757 ps
    )
    port map (
      I => A(1),
      O => A_1_INBUF
    );
  A_1_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD241",
      PATHPULSE => 757 ps
    )
    port map (
      I => A_1_INBUF,
      O => A_1_IBUF_1
    );
  A_2_IBUF : X_BUF
    generic map(
      LOC => "PAD170",
      PATHPULSE => 757 ps
    )
    port map (
      I => A(2),
      O => A_2_INBUF
    );
  A_2_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD170",
      PATHPULSE => 757 ps
    )
    port map (
      I => A_2_INBUF,
      O => A_2_IBUF_2
    );
  A_3_IBUF : X_BUF
    generic map(
      LOC => "PAD175",
      PATHPULSE => 757 ps
    )
    port map (
      I => A(3),
      O => A_3_INBUF
    );
  A_3_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD175",
      PATHPULSE => 757 ps
    )
    port map (
      I => A_3_INBUF,
      O => A_3_IBUF_3
    );
  B_0_IBUF : X_BUF
    generic map(
      LOC => "PAD76",
      PATHPULSE => 757 ps
    )
    port map (
      I => B(0),
      O => B_0_INBUF
    );
  B_0_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD76",
      PATHPULSE => 757 ps
    )
    port map (
      I => B_0_INBUF,
      O => B_0_IBUF_4
    );
  B_1_IBUF : X_BUF
    generic map(
      LOC => "PAD240",
      PATHPULSE => 757 ps
    )
    port map (
      I => B(1),
      O => B_1_INBUF
    );
  B_1_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD240",
      PATHPULSE => 757 ps
    )
    port map (
      I => B_1_INBUF,
      O => B_1_IBUF_5
    );
  B_2_IBUF : X_BUF
    generic map(
      LOC => "PAD174",
      PATHPULSE => 757 ps
    )
    port map (
      I => B(2),
      O => B_2_INBUF
    );
  B_2_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD174",
      PATHPULSE => 757 ps
    )
    port map (
      I => B_2_INBUF,
      O => B_2_IBUF_6
    );
  B_3_IBUF : X_BUF
    generic map(
      LOC => "PAD239",
      PATHPULSE => 757 ps
    )
    port map (
      I => B(3),
      O => B_3_INBUF
    );
  B_3_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD239",
      PATHPULSE => 757 ps
    )
    port map (
      I => B_3_INBUF,
      O => B_3_IBUF_7
    );
  S1A0_IBUF : X_BUF
    generic map(
      LOC => "PAD172",
      PATHPULSE => 757 ps
    )
    port map (
      I => S1A0,
      O => S1A0_INBUF
    );
  S1A0_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD172",
      PATHPULSE => 757 ps
    )
    port map (
      I => S1A0_INBUF,
      O => S1A0_IBUF_8
    );
  Co_OBUF : X_OBUF
    generic map(
      LOC => "PAD238"
    )
    port map (
      I => Co_O,
      O => Co
    );
  R_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD78"
    )
    port map (
      I => R_0_O,
      O => R(0)
    );
  R_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD237"
    )
    port map (
      I => R_1_O,
      O => R(1)
    );
  R_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD171"
    )
    port map (
      I => R_2_O,
      O => R(2)
    );
  R_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD173"
    )
    port map (
      I => R_3_O,
      O => R(3)
    );
  XLXI_32_XLXI_4_XLXI_1 : X_LUT4
    generic map(
      INIT => X"5A5A",
      LOC => "SLICE_X54Y56"
    )
    port map (
      ADR0 => B_0_IBUF_4,
      ADR1 => VCC,
      ADR2 => A_0_IBUF_0,
      ADR3 => VCC,
      O => R_0_OBUF_9
    );
  XLXI_32_XLXN_4_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X24Y33",
      PATHPULSE => 757 ps
    )
    port map (
      I => XLXI_32_XLXN_4,
      O => XLXI_32_XLXN_4_0
    );
  XLXI_32_XLXN_4_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X24Y33",
      PATHPULSE => 757 ps
    )
    port map (
      I => XLXI_32_XLXN_5_pack_1,
      O => XLXI_32_XLXN_5
    );
  XLXI_32_XLXI_4_XLXI_3 : X_LUT4
    generic map(
      INIT => X"ACAC",
      LOC => "SLICE_X24Y33"
    )
    port map (
      ADR0 => A_0_IBUF_0,
      ADR1 => S1A0_IBUF_8,
      ADR2 => B_0_IBUF_4,
      ADR3 => VCC,
      O => XLXI_32_XLXN_5_pack_1
    );
  XLXI_32_XLXI_1_XLXI_3 : X_LUT4
    generic map(
      INIT => X"BE28",
      LOC => "SLICE_X24Y32"
    )
    port map (
      ADR0 => XLXI_32_XLXN_3,
      ADR1 => S1A0_IBUF_8,
      ADR2 => B_3_IBUF_7,
      ADR3 => A_3_IBUF_3,
      O => Co_OBUF_11
    );
  XLXI_32_XLXI_2_XLXI_1 : X_LUT4
    generic map(
      INIT => X"6996",
      LOC => "SLICE_X25Y11"
    )
    port map (
      ADR0 => XLXI_32_XLXN_4_0,
      ADR1 => A_2_IBUF_2,
      ADR2 => S1A0_IBUF_8,
      ADR3 => B_2_IBUF_6,
      O => R_2_OBUF_12
    );
  R_3_OBUF_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X25Y10",
      PATHPULSE => 757 ps
    )
    port map (
      I => XLXI_32_XLXN_3_pack_1,
      O => XLXI_32_XLXN_3
    );
  XLXI_32_XLXI_2_XLXI_3 : X_LUT4
    generic map(
      INIT => X"8EE8",
      LOC => "SLICE_X25Y10"
    )
    port map (
      ADR0 => XLXI_32_XLXN_4_0,
      ADR1 => A_2_IBUF_2,
      ADR2 => S1A0_IBUF_8,
      ADR3 => B_2_IBUF_6,
      O => XLXI_32_XLXN_3_pack_1
    );
  XLXI_32_XLXI_3_XLXI_3 : X_LUT4
    generic map(
      INIT => X"F660",
      LOC => "SLICE_X24Y33"
    )
    port map (
      ADR0 => B_1_IBUF_5,
      ADR1 => S1A0_IBUF_8,
      ADR2 => A_1_IBUF_1,
      ADR3 => XLXI_32_XLXN_5,
      O => XLXI_32_XLXN_4
    );
  XLXI_32_XLXI_3_XLXI_1 : X_LUT4
    generic map(
      INIT => X"6996",
      LOC => "SLICE_X24Y32"
    )
    port map (
      ADR0 => B_1_IBUF_5,
      ADR1 => S1A0_IBUF_8,
      ADR2 => A_1_IBUF_1,
      ADR3 => XLXI_32_XLXN_5,
      O => R_1_OBUF_10
    );
  XLXI_32_XLXI_1_XLXI_1 : X_LUT4
    generic map(
      INIT => X"6996",
      LOC => "SLICE_X25Y10"
    )
    port map (
      ADR0 => B_3_IBUF_7,
      ADR1 => XLXI_32_XLXN_3,
      ADR2 => S1A0_IBUF_8,
      ADR3 => A_3_IBUF_3,
      O => R_3_OBUF_13
    );
  Co_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD238",
      PATHPULSE => 757 ps
    )
    port map (
      I => Co_OBUF_11,
      O => Co_O
    );
  R_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD78",
      PATHPULSE => 757 ps
    )
    port map (
      I => R_0_OBUF_9,
      O => R_0_O
    );
  R_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD237",
      PATHPULSE => 757 ps
    )
    port map (
      I => R_1_OBUF_10,
      O => R_1_O
    );
  R_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD171",
      PATHPULSE => 757 ps
    )
    port map (
      I => R_2_OBUF_12,
      O => R_2_O
    );
  R_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD173",
      PATHPULSE => 757 ps
    )
    port map (
      I => R_3_OBUF_13,
      O => R_3_O
    );
  NlwBlock_as4_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

