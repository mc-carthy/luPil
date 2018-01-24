N = 8 -- Board size

-- Check whether position (n, c) is free from attacks
function isPlaceOk (a, n, c)
    for i = 1, n - 1 do             -- For each Queen already placed
        if a[i] == c or             -- Same column
            (a[i] - i) == (c - n) or    -- Same diagonal
            (a[i] + i) == (c + n) then  -- Same diagonal
            return false
        end
    end
    return true
end

-- Print the board
function printSolution (a)
    for i = 1, N do
        for j = 1, N do
            -- Equivilent to writing a[i] == j ? "X" : "-"
            io.write(a[i] == j and "X" or "-", " ")
        end
        io.write("\n")
    end
    io.write("\n")
end

-- Add to board 'a' all Queens from 'n' to 'N'
function addQueen (a, n)
    if n > N then
        printSolution(a)
        return true
    else
        for c = 1, N do
            if isPlaceOk(a, n, c) then
                a[n] = c
                local ret = addQueen(a, n + 1)
                if ret then return true end
            end
        end
    end
end

-- Run program
addQueen({}, 1)