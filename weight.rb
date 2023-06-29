puts "как тебя зовут?"
name = gets.chomp
puts "Какой у тебя рост?"
height = gets.chomp.to_i
ideal = (height - 110) * 1.15
if ideal > 0
  puts "#{name}, ваш идеальный вес #{ideal} кг"
else
  puts "#{name}, ваш вес уже оптимален"
end