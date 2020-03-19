-- VHDL test bench created from symbol practica3.sym -- Sep 01 14:41:28 2019

LIBRARY vanmacro;
USE vanmacro.components.ALL;
LIBRARY ieee;
LIBRARY generics;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE generics.components.ALL;

entity testbench is
end testbench;

Architecture behavior of testbench is

   signal        A : std_logic;
   signal        B : std_logic;
   signal        C : std_logic;
   signal      AND : std_logic;
   signal     NAND : std_logic;
   signal     EXOR : std_logic;
   signal       OR : std_logic;
   signal      NOR : std_logic;

   component PRACTICA3
      Port (       A : In    std_logic;
                   B : In    std_logic;
                   C : In    std_logic;
                 AND : Out   std_logic;
                NAND : Out   std_logic;
                EXOR : Out   std_logic;
                  OR : Out   std_logic;
                 NOR : Out   std_logic );
   end component;

begin
   UUT : PRACTICA3
      Port Map ( A=>A, AND=>AND, B=>B, C=>C, EXOR=>EXOR, NAND=>NAND,
                 NOR=>NOR, OR=>OR );

-- *** Test Bench - User Defined Section ***
   TB : process
   begin
      wait; -- will wait forever
   end process;
-- *** End Test Bench - User Defined Section ***

end behavior;

