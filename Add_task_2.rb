
def check_str str
  # спроба спіймати некорктно введені дані
  begin
    s = str.split('').sort{|a,b| a<=>b}

    # змінна містить код останнього неперевіреного символу
    last = s[0].ord

    # перевіряємо сиволи за допомогою їх кодів
    # оскільки масив відсортовано по зростанню то ми можемо перевіряти
    # різницю між кодами сусідніх сиволів
    for i in (1..s.length-1)
      temp = s[i].ord
      if(temp - last == 1)
        last = temp
      else
        return false
      end
    end

    return true
  rescue
    return "incorrect data"
  end
end


puts "enter string:"
str = gets.chomp

puts check_str(str)
