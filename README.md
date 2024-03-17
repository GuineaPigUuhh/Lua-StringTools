# Lua-StringTools
a module just for me to train programming

## Language used
[LUA](https://www.lua.org)

![LUA IMAGE](https://www.lua.org/images/lua-logo.gif)

## Usage exemple
```lua
require "stringtools"      -- Like "using StringTools" on Haxe
local input = io.read("l") -- Input

local startsValue = "API"
local endsValue = "API"

print("\r")
print("Starts With " .. startsValue .. ": " .. tostring(string.startsw(input, startsValue)))
print("Ends With " .. endsValue .. ": " .. tostring(string.endsw(input, endsValue)))
print("\r")

local printTable = ""
for i, value in pairs(string.split(input, ",")) do
    printTable = printTable .. i .. ": " .. value .. ";\n"
end
print(printTable)
```
