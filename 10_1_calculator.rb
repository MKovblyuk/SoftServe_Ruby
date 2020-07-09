#
# Калькулятор з такими можливостями:
# 1. додавання, віднімання, множення, ділення
# 2. додавання, віднімання з пам’яті і перегляд її стану
# 3. ланцюгування методів @calc.add(3).multiply(6) => 18
# 4. збереження актуального стану і зчитування його
# 5. можливість очищення актульного стану
#
# Змінна калькулятора може бути ініціалізована певним значенням.
# Доступ до пам’яті та актуального результату здійснюється за допомогою
# ґеттерів відповідних полів об’єкту, а саме методів result та memory.
#

class Calculator
  attr_reader :memory, :result

  def initialize num = 0
    @result = num
    @memory = 0
  end

  def clear_memory
    @memory = 0
    @result = 0
  end

  def clear
    @result = 0
  end

  def add_to_memory
    @memory += @result
  end

  def substract_from_memory
    @memory -= @result
  end

  def add num
    @result += num
    self
  end

  def substract num
    @result -= num
    self
  end

  def multiply num
    @result *= num
    self
  end

  def divide num
    @result /= num
    self
  end

end
