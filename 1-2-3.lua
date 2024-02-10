function number(lines)
  arrayLength = #lines
  
  if (arrayLength == 0) then
    return 'empty'
  end
  
  result = {}
  
  for key, val in pairs(lines) do
    result[key] = key..": "..val
  end
  
  return result[2]
end

print(number({}))
print(number({"a","b","c"}))
