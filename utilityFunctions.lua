function genN2( n1, max )
  local n2 = math.random( 1, max );
  while true do
    if n2 == n1 then
      n2 = math.random( 1, max );
    else
      break
    end
  end
  return n2
end

function genN3( n1, n2, max )
  local n3 = math.random( 1, max );
  while true do
    if n3 == n2 or n3 == n1 then
      n3 = math.random( 1, max );
    else
      break
    end
  end
  return n3
end
