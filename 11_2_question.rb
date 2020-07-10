require_relative "11_1_answer"

# Клас для збереження питання та управління його вмістом.
# При створенні об'єктів цього класу ми можемо передати текст питання
# та інформацію щодо відповіді.
# Також є реалізовані методи для:
#     додавання нових відповідей;
#     перевірки кількості правильних відповідей користувача;
#     отримання множини номерів правильних питань;
#     виводу тексту питання на екран та звитування відповіді;
#     виводу результатів по даному питанню.
#  Також є службовий метод для опрацювання вхідних даних від користувача
#  ( даних з консолі ).
#
# Даний клас залежить від класу Answer.
#

class Question
  attr_accessor :text, :answers, :info, :user_answer

  def initialize text = "не вказано", info = "не вказано"
    @text = text
    @info = info
    @answers = []
  end

  # метод для додавання питання в множину питань
  def add_answer answer
    @answers << answer
  end

  # функція, яка видає відношення правильних варіантів, які були вказані користувачем
  # та загальної кількості правильних варіантів
   def check
    correct = 0
    fault = 0
    answers = get_correct
    @user_answer.each { |e|
      if answers.include? e
        correct += 1
      else
        fault += 1
      end
    }

    res = correct / answers.count
    res = res - fault * 0.5
    res >= 0.0 ? res : 0.0
  end

  # метод проходиться по всіх відповідях питання та
  # формує масив індексів правильних відповідей
  def get_correct
    correct = []

    for i in (0..@answers.length-1)
      if @answers[i].correct
        correct << i
      end
    end

    correct
  end

  # мето генерує питання та зчитує відповідь користувача
  def generate number
    puts ""
    puts "#{number}. #{@text}"

    @answers.each_with_index { |answer, index|
      answer.generate index
    }
    data = gets.chomp
    @user_answer = cast_user_answers data
  end

  # цей метод перетворює ввід користувача на масив чисел
  def cast_user_answers data
    temp = data.split (",")
    result = []
    temp.each { |e|
      result << e.to_i
    }
    result
  end

  # Ця функція виводить у потрібній формі результати
  def generate_result index
    puts ""
    puts "Питання №#{index}: #{@text}"
    puts "Ваш варіант: #{@user_answer}"
    puts "Правильний варіант: #{get_correct}"
    puts "Коротка довідка: #{@info}"
  end
end
