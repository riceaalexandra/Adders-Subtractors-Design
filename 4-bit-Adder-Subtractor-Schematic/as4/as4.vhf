--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 9.2.04i
--  \   \         Application : sch2vhdl
--  /   /         Filename : as4.vhf
-- /___/   /\     Timestamp : 03/06/2023 22:54:48
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: C:\Xilinx92i\bin\nt\sch2vhdl.exe -intstyle ise -family spartan3 -flat -suppress -w D:/SOC/as4/as4.sch as4.vhf
--Design Name: as4
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

entity M2_1_MXILINX_as4 is
   port ( D0 : in    std_logic; 
          D1 : in    std_logic; 
          S0 : in    std_logic; 
          O  : out   std_logic);
end M2_1_MXILINX_as4;

architecture BEHAVIORAL of M2_1_MXILINX_as4 is
   attribute BOX_TYPE   : string ;
   signal M0 : std_logic;
   signal M1 : std_logic;
   component AND2B1
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2B1 : component is "BLACK_BOX";
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
begin
   I_36_7 : AND2B1
      port map (I0=>S0,
                I1=>D0,
                O=>M0);
   
   I_36_8 : OR2
      port map (I0=>M1,
                I1=>M0,
                O=>O);
   
   I_36_9 : AND2
      port map (I0=>D1,
                I1=>S0,
                O=>M1);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity as4 is
   port ( A    : in    std_logic_vector (3 downto 0); 
          B    : in    std_logic_vector (3 downto 0); 
          S1A0 : in    std_logic; 
          Co   : out   std_logic; 
          R    : out   std_logic_vector (3 downto 0));
end as4;

architecture BEHAVIORAL of as4 is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal BNB  : std_logic_vector (3 downto 0);
   signal NB   : std_logic_vector (3 downto 0);
   component M2_1_MXILINX_as4
      port ( D0 : in    std_logic; 
             D1 : in    std_logic; 
             S0 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   component sum4
      port ( a  : in    std_logic_vector (3 downto 0); 
             b  : in    std_logic_vector (3 downto 0); 
             Ci : in    std_logic; 
             r  : out   std_logic_vector (3 downto 0); 
             Co : out   std_logic);
   end component;
   
   attribute HU_SET of XLXI_11 : label is "XLXI_11_3";
   attribute HU_SET of XLXI_12 : label is "XLXI_12_2";
   attribute HU_SET of XLXI_13 : label is "XLXI_13_0";
   attribute HU_SET of XLXI_14 : label is "XLXI_14_1";
begin
   XLXI_11 : M2_1_MXILINX_as4
      port map (D0=>B(3),
                D1=>NB(3),
                S0=>S1A0,
                O=>BNB(3));
   
   XLXI_12 : M2_1_MXILINX_as4
      port map (D0=>B(2),
                D1=>NB(2),
                S0=>S1A0,
                O=>BNB(2));
   
   XLXI_13 : M2_1_MXILINX_as4
      port map (D0=>B(1),
                D1=>NB(1),
                S0=>S1A0,
                O=>BNB(1));
   
   XLXI_14 : M2_1_MXILINX_as4
      port map (D0=>B(0),
                D1=>NB(0),
                S0=>S1A0,
                O=>BNB(0));
   
   XLXI_15 : INV
      port map (I=>B(3),
                O=>NB(3));
   
   XLXI_16 : INV
      port map (I=>B(2),
                O=>NB(2));
   
   XLXI_17 : INV
      port map (I=>B(1),
                O=>NB(1));
   
   XLXI_18 : INV
      port map (I=>B(0),
                O=>NB(0));
   
   XLXI_32 : sum4
      port map (a(3 downto 0)=>A(3 downto 0),
                b(3 downto 0)=>BNB(3 downto 0),
                Ci=>S1A0,
                Co=>Co,
                r(3 downto 0)=>R(3 downto 0));
   
end BEHAVIORAL;


