alph = ('а'..'я').to_a
volues = ['а', 'е', 'ё', 'и', 'й', 'о', 'у', 'ы', 'ъ', 'ю', 'я']
glas  = {}
alph.each.with_index(1) do |letter, index|
if volues.include?(letter)
  glas[letter] = index
end  
end
puts glas