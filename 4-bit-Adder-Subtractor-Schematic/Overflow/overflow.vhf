--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 9.2.04i
--  \   \         Application : sch2vhdl
--  /   /         Filename : overflow.vhf
-- /___/   /\     Timestamp : 03/08/2023 21:48:45
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: C:\Xilinx92i\bin\nt\sch2vhdl.exe -intstyle ise -family spartan3 -flat -suppress -w D:/SOC/Overflow/overflow.sch overflow.vhf
--Design Name: overflow
--Device: spartan3
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesis and simulted, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity overflow is
   port ( A     : in    std_logic_vector (3 downto 0); 
          A0_S1 : in    std_logic; 
          B     : in    std_logic_vector (3 downto 0); 
          Co    : out   std_logic; 
          Ov    : out   std_logic; 
          R     : out   std_logic_vector (3 downto 0));
end overflow;

architecture BEHAVIORAL of overflow is
   attribute BOX_TYPE   : string ;
   signal XLXN_6  : std_logic;
   signal XLXN_7  : std_logic;
   signal XLXN_8  : std_logic;
   signal XLXN_10 : std_logic;
   signal XLXN_11 : std_logic;
   signal XLXN_12 : std_logic;
   signal XLXN_13 : std_logic;
   signal XLXN_14 : std_logic;
   signal XLXN_15 : std_logic;
   signal XLXN_18 : std_logic;
   signal XLXN_19 : std_logic;
   signal XLXN_20 : std_logic;
   signal R_DUMMY : std_logic_vector (3 downto 0);
   component AND4
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND4 : component is "BLACK_BOX";
   
   component OR4
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR4 : component is "BLACK_BOX";
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   component as4
      port ( B    : in    std_logic_vector (3 downto 0); 
             S1A0 : in    std_logic; 
             A    : in    std_logic_vector (3 downto 0); 
             Co   : out   std_logic; 
             R    : out   std_logic_vector (3 downto 0));
   end component;
   
begin
   R(3 downto 0) <= R_DUMMY(3 downto 0);
   XLXI_1 : AND4
      port map (I0=>R_DUMMY(3),
                I1=>XLXN_20,
                I2=>XLXN_19,
                I3=>XLXN_18,
                O=>XLXN_6);
   
   XLXI_2 : AND4
      port map (I0=>XLXN_15,
                I1=>XLXN_14,
                I2=>A0_S1,
                I3=>A(3),
                O=>XLXN_8);
   
   XLXI_3 : AND4
      port map (I0=>R_DUMMY(3),
                I1=>B(3),
                I2=>A0_S1,
                I3=>XLXN_13,
                O=>XLXN_10);
   
   XLXI_4 : AND4
      port map (I0=>XLXN_12,
                I1=>B(3),
                I2=>XLXN_11,
                I3=>A(3),
                O=>XLXN_7);
   
   XLXI_5 : OR4
      port map (I0=>XLXN_7,
                I1=>XLXN_10,
                I2=>XLXN_8,
                I3=>XLXN_6,
                O=>Ov);
   
   XLXI_7 : INV
      port map (I=>A0_S1,
                O=>XLXN_11);
   
   XLXI_8 : INV
      port map (I=>A(3),
                O=>XLXN_13);
   
   XLXI_9 : INV
      port map (I=>R_DUMMY(3),
                O=>XLXN_15);
   
   XLXI_10 : INV
      port map (I=>B(3),
                O=>XLXN_14);
   
   XLXI_13 : INV
      port map (I=>R_DUMMY(3),
                O=>XLXN_12);
   
   XLXI_14 : as4
      port map (A(3 downto 0)=>A(3 downto 0),
                B(3 downto 0)=>B(3 downto 0),
                S1A0=>A0_S1,
                Co=>Co,
                R(3 downto 0)=>R_DUMMY(3 downto 0));
   
   XLXI_15 : INV
      port map (I=>A(3),
                O=>XLXN_18);
   
   XLXI_16 : INV
      port map (I=>A0_S1,
                O=>XLXN_19);
   
   XLXI_17 : INV
      port map (I=>B(3),
                O=>XLXN_20);
   
end BEHAVIORAL;


