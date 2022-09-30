-- plenary.reload module basically ensures "Package.loaded["v"] = nil is set
-- so that, require("v") actually reloads required module
local ok, plenary_reload = pcall(require, "plenary.reload")
if not ok then
  reloader = require
else
  reloader = plenary_reload.reload_module
end

P = function(v)
  print(vim.inspect(v))
  return v
end

RELOAD = function(...)
  return reloader(...)
end

R = function(v)
  RELOAD(v)
  return require(v)
end
