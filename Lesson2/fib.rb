a = 0
b = 1
fib = [a, b]
while fib[-1]+fib[-2] < 100
fib << fib[-1]+fib[-2]
end
puts fib