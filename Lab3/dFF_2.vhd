--------------------------------------------------------------------------------
-- Title         : Type D Flip-Flop - 2nd realization
-- Project       : VHDL Synthesis Overview
-------------------------------------------------------------------------------
-- File          : dFF_2.vhd
-- Author        : Rami Abielmona  <rabielmo@site.uottawa.ca>
-- Created       : 2003/05/17
-- Last modified : 2007/09/25
-------------------------------------------------------------------------------
-- Description : This file creates a flip-flop of type D as defined in the VHDL
--		 Synthesis lecture.  The architecture is done at the RTL
--		 abstraction level and the implementation is done in structural
--		 VHDL.
-------------------------------------------------------------------------------
-- Modification history :
-- 2003.05.17 	R. Abielmona		Creation
-- 2004.09.22 	R. Abielmona		Ported for CEG 3550
-- 2007.09.25 	R. Abielmona		Modified copyright notice
-------------------------------------------------------------------------------
-- This file is copyright material of Rami Abielmona, Ph.D., P.Eng., Chief Research
-- Scientist at Larus Technologies.  Permission to make digital or hard copies of part
-- or all of this work for personal or classroom use is granted without fee
-- provided that copies are not made or distributed for profit or commercial
-- advantage and that copies bear this notice and the full citation of this work.
-- Prior permission is required to copy, republish, redistribute or post this work.
-- This notice is adapted from the ACM copyright notice.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY dFF_2 IS
	PORT(
		i_d		: IN	STD_LOGIC;
		i_clock		: IN	STD_LOGIC;
		i_set : IN STD_LOGIC;
		i_resetBar : IN STD_LOGIC;
		o_q, o_qBar	: OUT	STD_LOGIC);
END dFF_2;

ARCHITECTURE rtl OF dFF_2 IS
	SIGNAL int_q : STD_LOGIC;

BEGIN

oneBitRegister:
PROCESS(i_clock, i_set, i_resetBar)
BEGIN
   IF (i_set = '1' )THEN 
	    int_q <= '1';
	ELSIF (i_resetBar = '0') THEN 
        int_q <= '0';	
	ELSIF (i_clock'EVENT and i_clock = '1') THEN
		int_q	<=	i_d;
	END IF;
END PROCESS oneBitRegister;

	--  Output Driver

	o_q		<=	int_q;
	o_qBar		<=	not(int_q);

END rtl;
