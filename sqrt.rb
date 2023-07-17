puts "введите первый коэффициент"
a = gets.chomp.to_i
puts "введите второй коэффициент"
b = gets.chomp.to_i
puts "введите третий коэффициент"
c = gets.chomp.to_i
d = b**2 - 4*a*c
if d < 0 
	puts "Корней нет!"
		else 
			x1 = ((-b) + Math.sqrt(d))/2*a 
			x2 = ((-b) - Math.sqrt(d))/2*a
		
		puts "первый корень равен: #{x1.to_i}"
		puts "второй корень равен: #{x2.to_i}"
	end