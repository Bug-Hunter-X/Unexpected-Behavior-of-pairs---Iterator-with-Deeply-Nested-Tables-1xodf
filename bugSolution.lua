local function foo(t)
  local function traverse(t, callback)
    for k, v in pairs(t) do
      if type(v) == "table" then
        traverse(v, callback)
      end
      callback(k, v)
    end
  end

traverse(t, function(k, v)
    -- Process k and v here
    print(k, v)
  end)
end

local t = {a = 1, b = {c = 2, d = {e = 3}}}
foo(t)