----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04.03.2023 23:42:39
-- Design Name: 
-- Module Name: UklKomb1_tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity UklKomb1_tb is
--  Port ( );
end UklKomb1_tb;

architecture Behavioral of UklKomb1_tb is
    component UklKomb1
        Port (sw_i : in std_logic_vector (3 downto 0);
        led7_an_o : out std_logic_vector (3 downto 0);
        led7_seg_o : out std_logic_vector (7 downto 0));
    end component;
    
    --inputs
    signal sw_i : std_logic_vector (3 downto 0);
    
    --outputs
    signal led7_an_o : std_logic_vector (3 downto 0);
    signal led7_seg_o : std_logic_vector (7 downto 0);
    
    constant delay : time := 100 ms;

begin
    -- instance the uut
    uut: UklKomb1 PORT MAP(
        sw_i => sw_i,
        led7_an_o => led7_an_o,
        led7_seg_o => led7_seg_o
    );
    -- stimulus process
    stim_proc: process
    begin
        
        sw_i <= "0000";
        wait for delay;
        sw_i <= "0001";
        wait for delay;
        sw_i <= "0010";
        wait for delay;
        sw_i <= "0011";
        wait for delay;
        sw_i <= "0100";
        wait for delay;
        sw_i <= "0101";
        wait for delay;
        sw_i <= "0110";
        wait for delay;
        sw_i <= "0111";
        wait for delay;
        sw_i <= "1000";
        wait for delay;
        sw_i <= "1001";
        wait for delay;
        sw_i <= "1010";
        wait for delay;
        sw_i <= "1011";
        wait for delay;
        sw_i <= "1100";
        wait for delay;
        sw_i <= "1101";
        wait for delay;
        sw_i <= "1110";
        wait for delay;
        sw_i <= "1111";
        wait for delay;
     
    end process;
end Behavioral;
