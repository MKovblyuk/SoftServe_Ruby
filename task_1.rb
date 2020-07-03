

#функція яка повертає номер квартала відповідно до номера місяця
def getQuarter(month_number)

  if ((1..3).include? month_number)
    return 1
  elsif ((4..6).include? month_number)
    return 2
  elsif ((7..9).include? month_number)
    return 3
  elsif ((10..12).include? month_number)
    return 4
  else
    return 0
  end
end

#спроба спіймати помилку введеного аргумента
begin
  #введення номера місяця
  puts "Enter month number:"
  month_number = Integer(gets.chomp)

  #обчислення кварталу
  quarter = getQuarter(month_number)

  #перевірка отриманих значеннь
  if (quarter != 0)
    print quarter.to_s + " quarter"
  else
    puts "incorrect data !"
  end
rescue ArgumentError
  puts "incorrect data !"
end
