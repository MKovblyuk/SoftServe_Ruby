
class Task_1

  # функція визначає скільки разів змінився знак чисел в масиві
  def find_sign_change arr

    # змінна яка відповідає за кількість змін знаку
    count = 0

    # проходимо по масиву порівнюючи сусідні елементи
    for i in (0..arr.length - 2)
      count += 1 if((arr[i] < 0 && arr[i+1] >= 0)||(arr[i] >= 0 && arr[i+1] < 0))
    end

    count
  end


  def input_arr

    arr = Array.new

    # цикл буде працювати доки не натиснуто 'q'
    begin
      # спроба спіймати помилку неправильно введеного аргумента
      begin
        # зчитуємо тимчасову змінну
        puts "(to exit press q)\nenter element:"
        temp = gets.chomp
        # перевіряємо умову виходу та дописуємо тимчасову змінну в масив
        break if(temp == "q")
        arr.push(Float(temp))
      rescue ArgumentError
        puts "icorrect data"
      end
    end while true
    arr
  end
end

arr = Task_1.new.input_arr
puts arr.to_s
puts Task_1.new.find_sign_change arr
