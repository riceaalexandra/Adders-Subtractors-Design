--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.
-- All Right Reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 9.2.04i
--  \   \         Application : ISE
--  /   /         Filename : tbw.vhw
-- /___/   /\     Timestamp : Mon Mar 06 21:42:42 2023
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: 
--Design Name: tbw
--Device: Xilinx
--

library UNISIM;
use UNISIM.Vcomponents.ALL;
library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
USE IEEE.STD_LOGIC_TEXTIO.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE STD.TEXTIO.ALL;

ENTITY tbw IS
END tbw;

ARCHITECTURE testbench_arch OF tbw IS
    FILE RESULTS: TEXT OPEN WRITE_MODE IS "results.txt";

    COMPONENT sum4
        PORT (
            a : In std_logic_vector (3 DownTo 0);
            b : In std_logic_vector (3 DownTo 0);
            Co : Out std_logic;
            r : Out std_logic_vector (3 DownTo 0)
        );
    END COMPONENT;

    SIGNAL a : std_logic_vector (3 DownTo 0) := "0000";
    SIGNAL b : std_logic_vector (3 DownTo 0) := "0000";
    SIGNAL Co : std_logic := '0';
    SIGNAL r : std_logic_vector (3 DownTo 0) := "0000";

    BEGIN
        UUT : sum4
        PORT MAP (
            a => a,
            b => b,
            Co => Co,
            r => r
        );

        PROCESS
            BEGIN
                -- -------------  Current Time:  100ns
                WAIT FOR 100 ns;
                a <= "0101";
                b <= "1100";
                -- -------------------------------------
                -- -------------  Current Time:  200ns
                WAIT FOR 100 ns;
                a <= "1100";
                -- -------------------------------------
                -- -------------  Current Time:  300ns
                WAIT FOR 100 ns;
                a <= "1001";
                b <= "1001";
                -- -------------------------------------
                -- -------------  Current Time:  400ns
                WAIT FOR 100 ns;
                a <= "0001";
                -- -------------------------------------
                -- -------------  Current Time:  500ns
                WAIT FOR 100 ns;
                a <= "1110";
                b <= "0001";
                -- -------------------------------------
                -- -------------  Current Time:  600ns
                WAIT FOR 100 ns;
                a <= "0111";
                -- -------------------------------------
                -- -------------  Current Time:  700ns
                WAIT FOR 100 ns;
                b <= "1110";
                -- -------------------------------------
                -- -------------  Current Time:  800ns
                WAIT FOR 100 ns;
                a <= "1010";
                -- -------------------------------------
                -- -------------  Current Time:  900ns
                WAIT FOR 100 ns;
                a <= "0011";
                b <= "0111";
                -- -------------------------------------
                -- -------------  Current Time:  1000ns
                WAIT FOR 100 ns;
                a <= "0110";
                -- -------------------------------------
                -- -------------  Current Time:  1100ns
                WAIT FOR 100 ns;
                a <= "1100";
                -- -------------------------------------
                -- -------------  Current Time:  1200ns
                WAIT FOR 100 ns;
                a <= "0001";
                -- -------------------------------------
                -- -------------  Current Time:  1300ns
                WAIT FOR 100 ns;
                a <= "1000";
                b <= "1010";
                -- -------------------------------------
                -- -------------  Current Time:  1500ns
                WAIT FOR 200 ns;
                a <= "0101";
                b <= "0011";
                -- -------------------------------------
                -- -------------  Current Time:  1600ns
                WAIT FOR 100 ns;
                a <= "1100";
                -- -------------------------------------
                -- -------------  Current Time:  1700ns
                WAIT FOR 100 ns;
                a <= "0010";
                b <= "0110";
                -- -------------------------------------
                -- -------------  Current Time:  1800ns
                WAIT FOR 100 ns;
                a <= "0011";
                -- -------------------------------------
                -- -------------  Current Time:  1900ns
                WAIT FOR 100 ns;
                a <= "1010";
                b <= "1100";
                -- -------------------------------------
                -- -------------  Current Time:  2000ns
                WAIT FOR 100 ns;
                a <= "0110";

            END PROCESS;

    END testbench_arch;

