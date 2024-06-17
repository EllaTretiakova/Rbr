puts "Для решения квадратного уровнения, введите три коэффициента: a, b, c"
puts "Введите значение коэффициента a"
a = gets.chomp.to_i
puts "Введите значение коэффициента b"
b = gets.chomp.to_i
puts "Введите значение коэффициента с"
c = gets.chomp.to_i
D = b**2 - 4 * a * c
  if D < 0
    puts "Корни невозможно вычислить"
  else 
    x1 = ((-b) + Math.sqrt(D))/2*a  
    x2 = ((-b) - Math.sqrt(D))/2*a
  	puts "Корни квадратного уровнения x1 = #{x1.to_i} и x2 = #{x2.to_i}"
  end
