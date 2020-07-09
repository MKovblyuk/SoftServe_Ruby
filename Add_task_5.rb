
def findSymbol str
  s = str.split('')

  # змінна яка зберігатиме значення максимальної ваги символа
  max_weight = 0

  # масив символів з максимальною вагою
  max_symbols = Array.new(0)

  # проходжуся помасиву та знаходжу вагу кожного символу
  # і одночасно знаходжу максимальну вагу сиволу
  for i in (0..s.length-1)
    weight = 0
    symbol = s[i]

    # якщо даного сиволу немає в масиві то шукаємо його вагу
    # якщо такий символ вже входить в масив перевіряти його не має сенсу
    unless max_symbols.include? symbol
      for j in (i+1..s.length-1)
        weight = j - i if(symbol == s[j])
      end
    end

    # переписую максимальну вагу та відповідно або переписую або дописую символ в масив
    # перша умова означає що символу з такою вагою не було тому потрібно його
    # переписати, друга умова означає що сивол з такою вагою вже є і потрібно
    # його дописати в масив для подальшого сортування згідно умови
    if(max_weight < weight)
      max_weight = weight
      max_symbols[0] = symbol
    elsif(max_weight == weight)
      max_symbols.push(symbol)
    end
  end

  # сортую отриманий масив символів
  max_symbols = max_symbols.sort{|a,b| a<=>b}

  return max_symbols[0]
end

puts "enter string:"
str = gets.chomp

puts findSymbol str
