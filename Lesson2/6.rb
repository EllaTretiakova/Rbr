list = {}

puts "Введите список товаров"

puts "При завершении операции, введите слово 'Cтоп' в качестве названия товара"

loop do
  puts "Введите название товара"
  name = gets.chomp
  break if name == "Стоп" || name == "стоп"

  puts "Введите количество товара, в штуках"
  quantity = gets.chomp.to_i

  puts "Введите стоимость товара за 1 штуку"
  price = gets.chomp.to_i

  sum = price * quantity

  list[name] = {price: price, quantity: quantity, total_price: sum}
end

ending_sum = 0
list.each do |name, info|
  ending_sum += info[:total_price]
end

puts list.inspect

puts ending_sum
