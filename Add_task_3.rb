
class Task_3
  # функція повертає кількість не валідних сиволів
  # та загальну кількість символів
  def check_print str

    # оголошуємо змінну яка буде відповідати за кількість не валідних сиволів
    not_valid = 0

    # перевіряємо кожний символ чи він є в межах від 'a'-'f'
    str.each_char do |e|
      not_valid += 1 if(e.ord < 96 || e.ord > 102)
    end

    return not_valid, str.length
  end

  # введення рядка
  def input_str
    puts "enter string:"
    return gets.chomp
  end
end

str = Task_3.new.input_str
not_valid, size = Task_3.new.check_print str
puts "#{not_valid} / #{size}"
