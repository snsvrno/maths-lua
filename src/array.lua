ARRAY = { }

function ARRAY.multiply(a,b)
  -- only works on 1 dimensional arrays, number * table or table * table

  if type(a) == "table" and type(b) == "number" then
    local newTable = { }
    for i,v in pairs(a) do newTable[i] = a[i] * b end
    return newTable
  elseif type(b) == "table" and type(a) == "number" then
    local newTable = { }
    for i,v in pairs(b) do newTable[i] = b[i] * a end
    return newTable
  elseif type(b) == "table" and type(a) == "table" then
    local newTable = { }
    local big,small = a,b
    if #a < #b then big,small = b,a end
    for i=1,#big do
      if  i <= #small then
        newTable[i] = big[i] * small[i]
      else
        newTable[i] = big[i]
      end
    end
    return newTable
  end
end

function ARRAY.add(a,b)
  -- only works on 1 dimensional arrays, number * table or table * table

  if type(a) == "table" and type(b) == "number" then
    local newTable = { }
    for i,v in pairs(a) do newTable[i] = a[i] + b end
    return newTable
  elseif type(b) == "table" and type(a) == "number" then
    local newTable = { }
    for i,v in pairs(b) do newTable[i] = b[i] + a end
    return newTable
  elseif type(b) == "table" and type(a) == "table" then
    local newTable = { }
    local big,small = a,b
    if #a < #b then big,small = b,a end
    for i=1,#big do
      if  i <= #small then
        newTable[i] = big[i] + small[i]
      else
        newTable[i] = big[i]
      end
    end
    return newTable
  end
end

return ARRAY