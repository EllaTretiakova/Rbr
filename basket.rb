basket = {}
puts "После того, как закончите заполнять корзинe, введите в строку слово 'Stop'"
loop do
    puts "Введите назавание товара"
    product = gets.chomp
    break if product == "Стоп" || product == "стоп"
    puts "Введите цену товара за 1 единицу"
    price = gets.chomp.to_f
    puts "Введите количество товара в штуках"
    quantity = gets.chomp.to_i

 quantity1 = price * quantity

    basket[product]= {price: price, quantity: quantity, total_price: quantity1}

end
total_sum = 0
basket.each do |product, info|
 total_sum += info[:total_price]
end

puts basket.inspect

puts total_sum