
def max_prefix s
  str = s.split('')

  # довжина префікса
  length = 0

  # для зручності та зменшення кількості викликів функцій та операцій ділення
  # оголошую наступні змінні
  # n - індекс останнього елемента в масиві
  # mid - індекс "правого центрального" елемента в масиві
  n = str.length - 1
  mid = n/2 + 1

  # j - лічильник префікса
  # i - лічильник суфікса, який починається з "правого центрального" елемента
  j = 0
  for i in (mid..n)
    if(str[j] == str[i])
      j += 1
      length += 1
    else
      j = 0
      length = 0
    end
  end

  length
end


puts "enter string:"
str = gets.chomp

puts max_prefix str
