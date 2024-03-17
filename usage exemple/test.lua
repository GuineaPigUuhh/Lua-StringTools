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
