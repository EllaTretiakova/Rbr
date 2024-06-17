puts "Назвоите своё имя"
name = gets.chomp
puts "Назовите свой рост"
height = gets.chomp.to_i
weight = (height - 110) * 1.15
if weight > 0 
puts "#{name}, ваш идеальный вес #{weight}!"
else weight < 0 
  puts "#{name}, ваш вес идеален!"
end