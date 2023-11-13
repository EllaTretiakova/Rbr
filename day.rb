puts "Введите дату"
day = gets.chomp.to_i
 
puts "Введите месяц"
month = gets.chomp.to_i
puts "Введите год"
year = gets.chomp.to_i
day_month = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
if year % 400==0 || (year % 100 != 0 && year % 4 == 0)
    day_month [1] = 29
end
number = 0
for i in (0 .. month-2)
    number += day_month[i]
    
end
number += day
puts number