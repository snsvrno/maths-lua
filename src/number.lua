local NUMBER = { }

function NUMBER.round(no,decimalPlaces)
  -----------------------------------------------------
  -- rounds a number using the math rules
  --
  -- no : number             number to round
  -- decimalPlaces : int     number of decimal places to round to
  --
  -- return : number         rounded number
  -----------------------------------------------------

  decimalPlaces = math.floor(decimalPlaces) -- error checking, to make sure its an int, otherwise the result will be weird and unusable.
  
  local roundedNumber = no * 10^decimalPlaces

  -- checks which direction to round to.
  if (roundedNumber - math.floor(roundedNumber)) < 0.5 then 
    roundedNumber = math.floor(roundedNumber) 
  else 
    roundedNumber = math.ceil(roundedNumber) 
  end

  return roundedNumber / 10^decimalPlaces

end

return NUMBER
