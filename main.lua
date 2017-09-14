--
-- Created by IntelliJ IDEA.
-- User: polit
-- Date: 12/09/2017
-- Time: 20:28
-- To change this template use File | Settings | File Templates.
--

-- defines a factorial function
function fact(n)
    if n == 0 then
        return 1;
    else
        return n * fact(n-1);
    end
end

print("enter a number:");
a = io.read("*n");   -- read a number
print(fact(5));