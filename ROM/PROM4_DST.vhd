library ieee;
use ieee.std_logic_1164.all,ieee.numeric_std.all;

entity PROM4_DST is
port (
	addr : in  std_logic_vector(7 downto 0);
	data : out std_logic_vector(7 downto 0)
);
end entity;

architecture prom of PROM4_DST is
	type rom is array(0 to  255) of std_logic_vector(7 downto 0);
	signal rom_data: rom := (
		X"00",X"00",X"00",X"00",X"00",X"0F",X"0F",X"0F",X"00",X"02",X"02",X"02",X"00",X"0D",X"0D",X"0D",
		X"00",X"09",X"0C",X"03",X"00",X"05",X"02",X"0B",X"00",X"02",X"06",X"04",X"00",X"0F",X"0D",X"05",
		X"00",X"0D",X"0C",X"06",X"00",X"02",X"0C",X"07",X"00",X"07",X"0F",X"09",X"00",X"01",X"0A",X"0C",
		X"00",X"01",X"0A",X"08",X"00",X"08",X"07",X"0E",X"00",X"07",X"0C",X"0A",X"00",X"07",X"0F",X"01",
		X"00",X"07",X"03",X"06",X"00",X"05",X"0C",X"0A",X"00",X"0D",X"0E",X"01",X"00",X"02",X"08",X"01",
		X"00",X"02",X"06",X"01",X"00",X"05",X"01",X"0A",X"00",X"08",X"06",X"0A",X"00",X"06",X"07",X"04",
		X"00",X"06",X"0F",X"01",X"00",X"07",X"0A",X"0F",X"00",X"05",X"07",X"09",X"00",X"0F",X"08",X"05",
		X"00",X"02",X"0F",X"01",X"00",X"0F",X"0C",X"08",X"00",X"02",X"0C",X"08",X"00",X"0D",X"0C",X"08",
		X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",
		X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",
		X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",
		X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",
		X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",
		X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",
		X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",
		X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00");
begin
	data <= rom_data(to_integer(unsigned(addr)));
end architecture;
