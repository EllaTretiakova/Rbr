puts "Хотите узнать является ли год високосным?"

puts "Введите год"
year = gets.chomp.to_i

puts "Введите месяц года"
month = gets.chomp.to_i

puts "Введите день года"
day = gets.chomp.to_i

month_day = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
if year % 400 || ((year % 100 != 0 && year % 4 == 0))
  month_day [1] = 29
end

number = 0
for i in (0.. month - 2)
  number += month_day[i]
end

number += day
puts number
