# Написати програму, яка обраховує вік користувача, базуючись на даті народження у певному форматі
# Програма має видавати вік, або видавати "-1" у випадку некоректної вхідної інформації


# Ви маєте дописати частину, де вхідна інформація перевіряється на коректність
# та записує у змінну result очікуване значення - кількість років людини, або -1.

class Calculator
  def console_calculator

      # Остаточний вік користувача програми
      result = 0

      # Вивід інформаційного повідомлення
      puts "Програма обчислить ваш вік"
      puts "Введіть дату свого народження у такому форматі дд-мм-рррр"

      # Зчитування даних з консолі
      dob = gets.chomp

      # Формування масиву, внаслідок дії методу split (поділити) класу String
      dob = dob.split "-"

      # Ініціалізації змінних, в яких міститься інформація про рік, місяць та день народження користувача
      dob_year = dob[2]
      dob_month = dob[1]
      dob_day = dob[0]

      # Використання вбудованого об’єкту Time для знаходження поточної дати
      #current_time = Time.new

      # Ініціалізації змінних, в яких міститься інформація про рік, місяць та день місяця
      #current_year = current_time.year
      #current_month = current_time.month
      #current_day = current_time.day

    	# Алгоритм

      # Перевірка вхідних даних на правильність та обчислення дати народження.
      # Поелементний аналіз базується на порівнянні послідовно років, місяців, днів місяця.
      if checkDate(dob_year,dob_month,dob_day) == true
        result = Time.new.year - dob_year.to_i
      else
        result = -1
      end

      puts result;
  end

  #функція повертає чи є рік високосним
  def is_LeapYear(year)
    if(year % 4 != 0)
      return false
    else
      if(year % 100 == 0)
        if(year % 4 == 0)
          return true
        else
          return false
        end
      else
        return true
      end
    end
  end

  #перевірка введених даних
  def checkDate(year,month,day)
    #спроба спіймати некоректне введеня аргументів
    begin
      year = year.to_i
      month = month.to_i
      day = day.to_i

      #тут вказано кількість днів в місяці, індекс масиву є порядковим номером місяця
      days_of_month = [0,31,28,31,30,31,30,31,31,30,31,30,31]
      
      #перевірка з поточною датою
      return false if(year > Time.new.year || year < 1)
      return false unless((1..12).include? month)
      return false if(year == Time.new.year && month > Time.new.month)
      return false if(month == Time.new.month && day > Time.new.day)

      #перевірка високосного року
      return true if(is_LeapYear(year) && month == 2 && ((1..29).include? day))

      #перевірка днів відносно місяців
      return false unless((1..days_of_month[month]).include? day)

      return true

    rescue ArgumentError
      return false
    end
  end
  console_calculator
end
