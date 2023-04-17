local ok, plenary_reload = require("plenary.reload")
local reloader

if ok then
  reloader = plenary_reload
end

P = function(v)
  print(vim.inspect(v))
end

R = function(name)
  reloader(name)
  return require(name)
end
