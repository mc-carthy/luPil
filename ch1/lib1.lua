--[[
Run this library by either of the following commands:
    lua -llib1
        Loads the library and opens the interpreter
    lua
        Opens the interpreter
    > dofile("lib1.lua")
        Loads the library
--]]

function normalise(x, y)
    return math.sqrt(x^2 + y^2)
end

function twice(x)
    return x * 2.0
end