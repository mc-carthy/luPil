function factorial(n)
    if n < 0 then
        return "Please enter a positive number"
    end
    
    if n == 0 then
        return 1
    else
        return n * factorial(n - 1)
    end
end

print("Enter a number:")
a = io.read("*n") -- Read a number
print(factorial(a))