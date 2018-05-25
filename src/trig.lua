local TRIG = { }

-- magnitude and direction, angle returned in radians
function TRIG.magAndDirection(p1x,p1y,p2x,p2y)
  local dx = p2x-p1x
  local dy = p2y-p1y

  local dxa = math.abs(dx)
  local dya = math.abs(dy)

  local mag = math.sqrt(math.pow(dya,2) + math.pow(dxa,2))

  local angle = math.atan(dya/dxa)

  if dy >= 0 and dx >= 0 then
    return mag,angle
  elseif dy >= 0 and dx < 0 then
    return mag,angle + math.pi
  elseif dy < 0 and dx < 0 then
    return mag,angle + 2*math.pi
  else return mag,angle + 3/2*math.pi end
end

-- rescales the angle to be between 0 and 2PI
function TRIG.normalizeAngle(angle)
  if angle < 0 then
    while angle < 0 do angle = angle + 2*math.pi end
    return angle
  end
  if angle > 2*math.pi then
    while angle > 2*math.pi do angle = angle - 2*math.pi end
    return angle
  end
end

return TRIG