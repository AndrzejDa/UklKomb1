----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04.03.2023 23:00:41
-- Design Name: 
-- Module Name: UklKomb1 - Behavioral
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

entity UklKomb1 is
  Port (sw_i : in std_logic_vector (3 downto 0);
        led7_an_o : out std_logic_vector (3 downto 0);
        led7_seg_o : out std_logic_vector (7 downto 0));
end UklKomb1;

architecture Behavioral of UklKomb1 is
    signal led7_0 : std_logic_vector(7 downto 0) := "00000001";
    signal led7_1 : std_logic_vector(7 downto 0) := "10011111";
    signal led7_2 : std_logic_vector(7 downto 0) := "00100101";
    signal led7_3 : std_logic_vector(7 downto 0) := "00001101";
    signal led7_4 : std_logic_vector(7 downto 0) := "10011001";
    
begin
    process(sw_i)
        variable num_bits : integer range 0 to sw_i'length;
        begin
        led7_an_o <= "1111";
        num_bits := 0;
        for i in sw_i'range loop
            if sw_i(i) = '1' then 
                num_bits := num_bits + 1;
            end if;
        end loop;
        
        if num_bits = 1 then led7_seg_o <= led7_1;
        elsif num_bits = 2 then led7_seg_o <= led7_2;
        elsif num_bits = 3 then led7_seg_o <= led7_3;
        elsif num_bits = 4 then led7_seg_o <= led7_4;
        else led7_seg_o <= led7_0;
        end if;
        
        led7_an_o <= "1110";
     end process;        
end Behavioral;
