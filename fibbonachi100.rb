fb1 = 0
fb2 = 1
fib = [fb1, fb2]
while fib[-1]+fib[-2] < 100
fib << fib[-1]+fib[-2]
end
puts fib