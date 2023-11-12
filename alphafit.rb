alphafit = ('а'..'я').to_a
vowels = ['а', 'е', 'ё', 'и', 'й', 'о', 'у', 'ы', 'ъ', 'ю', 'я']
	glas  = {}
	alphafit.each.with_index(1) do |letter, index|
  if vowels.include?(letter)
    glas[letter] = index
  end  
end
puts glas