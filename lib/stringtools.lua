---easily returns the character of the ```str```
---@param str string
---@param index integer
---@return string
function string.charAt(str, index)
    return string.sub(str, index, index)
end

---if string starts with ```starts``` returns true else false
---@param str string
---@param starts string
---@return boolean
function string.startsw(str, starts)
    return string.sub(str, 1, #starts) == starts
end

---if string ends with ```ends``` returns true else false
---@param str string
---@param ends string
---@return boolean
function string.endsw(str, ends)
    local startLenght = (#str - #ends) + 1
    if startLenght < 0 then
        startLenght = 0
    end
    return string.sub(str, startLenght, #str) == ends
end

---will return a table using ```sep``` to separate the string into values ​​for the table
---@param str string
---@param sep string
---@return table
function string.split(str, sep)
    if sep == nil then
        sep = "%s"
    end
    local rtable = {}
    for v in string.gmatch(str, "([^" .. sep .. "]+)") do
        table.insert(rtable, v)
    end
    return rtable
end
