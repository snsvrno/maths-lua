
-- built with lmake (0.1.2) <https://github.com/snsvrno/lmake-rs>
-- a tool for compiling lua libraries from multiple source files and dependencies
package.preload['maths-285718270020708061177246'] = (function(...)
local NUMBER = { }
function NUMBER.round(no,decimalPlaces)
  local roundedNumber = no * 10^decimalPlaces
  if (roundedNumber - math.floor(roundedNumber)) < 0.5 then 
    roundedNumber = math.floor(roundedNumber) 
  else 
    roundedNumber = math.ceil(roundedNumber) 
  end
  return roundedNumber / 10^decimalPlaces
end
return NUMBER
end)
package.preload['maths-724327788108443420688284'] = (function(...)
local LINE = { }
function LINE.pointOnLine(x1,y1,x2,y2,distance)
  local returnedPoint = { x = 0 , y = 0 }
  local bigDistance = math.sqrt(math.pow(x2 - x1,2)+math.pow(y2 - y1,2))
  local factor = distance / bigDistance
  returnedPoint.x = (x2 - x1) * factor + x1
  returnedPoint.y = (y2 - y1) * factor + y1
  return returnedPoint.x,returnedPoint.y
end
return LINE
end)
local library = {}
library.name = 'maths'
library.user = 'snsvrno'
library.author = 'snsvrno <snsvrno@tuta.io>'
library.version = '0.1.0'
library.number = require ("maths-285718270020708061177246")
library.line = require ("maths-724327788108443420688284")
return library