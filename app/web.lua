local http = require("lapis.nginx.http")
local lapis = require("lapis")
local respond_to
do
  local _obj_0 = require("lapis.application")
  respond_to = _obj_0.respond_to
end
return lapis.serve((function()
  do
    local _parent_0 = lapis.Application
    local _base_0 = {
      ["/"] = function(self)
        return "Welcome to Lapis " .. tostring(require("lapis.version")) .. "!"
      end,
      ["/node"] = respond_to({
        POST = function(self)
          http.simple({
            url = "http://localhost:7474/db/data/node",
            method = "POST",
            headers = {
              ["content-type"] = "application/json; charset=UTF-8"
            },
            body = { }
          })
          return "node created"
        end
      })
    }
    _base_0.__index = _base_0
    setmetatable(_base_0, _parent_0.__base)
    local _class_0 = setmetatable({
      __init = function(self, ...)
        return _parent_0.__init(self, ...)
      end,
      __base = _base_0,
      __name = nil,
      __parent = _parent_0
    }, {
      __index = function(cls, name)
        local val = rawget(_base_0, name)
        if val == nil then
          return _parent_0[name]
        else
          return val
        end
      end,
      __call = function(cls, ...)
        local _self_0 = setmetatable({}, _base_0)
        cls.__init(_self_0, ...)
        return _self_0
      end
    })
    _base_0.__class = _class_0
    if _parent_0.__inherited then
      _parent_0.__inherited(_parent_0, _class_0)
    end
    return _class_0
  end
end)())
