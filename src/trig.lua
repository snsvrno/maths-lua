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
    -- for the dy/dx situtation where dy == 0 and dx == 0
    if angle ~= angle then return mag,0 else return mag,angle end
  elseif dy >= 0 and dx < 0 then
    return mag,math.pi - angle
  elseif dy < 0 and dx < 0 then
    return mag,angle + math.pi
  else return mag,2*math.pi - angle end
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
  return angle
end

-- function to best match which angle should be used and then return the defined group. the directions should
-- be defined in order of pairs and the first value should be the key and the 2nd the value to be returned
function TRIG.subdivideAndMatch(directions,angle)
  directions = directions or { }

  -- last angle
  local la = nil
  for i=1,#directions,2 do
    if angle <= directions[i] then
      if la ~= nil then
        if angle > directions[la] then
          local splitPoint = directions[la] + (directions[i] - directions[la]) / 2
          if angle <= splitPoint then
            return directions[la+1]
          else
            return directions[i+1]
          end
        end
      else
        return directions[i+1]
      end
    else
      la = i
    end
  end

end

return TRIG