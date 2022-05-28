
	package PWM_package is
	

	end package PWM_package;
	
	
	package body PWM_package is

	  function increment (duty : integer, valor : integer) return integer is

	    variable result : integer;

	  begin

	    result := duty + valor;

	    return result;

	  end function increment;

	  function decrement (duty : integer, valor : integer) return integer is

	    variable result : integer;

	  begin

	    result := duty - valor;

	    return result;

	  end function decrement;
	end package body PWM_package;