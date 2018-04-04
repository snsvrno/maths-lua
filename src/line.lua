local LINE = { }

function LINE.pointOnLine(x1,y1,x2,y2,distance)
  -----------------------------------------------------
  -- returns a point on the defined line
  --
  -- x1,y1 : numbers          the x and y values for the first point
  -- x2,y2 : numbers          the x and y values for the second point
  -- distance : number        the distance from the first point to the desired point
  --
  -- x,y : numbers            the new point certain distance from the first point
  -----------------------------------------------------

  local returnedPoint = { x = 0 , y = 0 }

  local bigDistance = math.sqrt(math.pow(x2 - x1,2)+math.pow(y2 - y1,2))
  local factor = distance / bigDistance

  returnedPoint.x = (x2 - x1) * factor + x1
  returnedPoint.y = (y2 - y1) * factor + y1

  return returnedPoint.x,returnedPoint.y
end

return LINE
