
#функція введення чисел a,b,c
def input()
  #спроба спіймати помилку неправильно введеного аргумента
  begin
    begin
      puts "enter a"
      a = Integer(gets.chomp)
    end until (1..10).include? a

    begin
      puts "enter b"
      b = Integer(gets.chomp)
    end until (1..10).include? b

    begin
      puts "enter c"
      c = Integer(gets.chomp)
    end until (1..10).include? c

    return a,b,c
  rescue ArgumentError
    return nil
  end
end

#функція яка повертає максимальне значення яке можна отримати з заданих чисел
def maxValue(a,b,c)
  return a+b+c if(a == 1 && c == 1)

  if(b == 1)
    if(a < c)
      return (a + b) * c
    else
      return a * (b + c)
    end
  end

  return (a + b) * c if(a == 1)
  return a * (b + c) if(c == 1)
  return a*b*c
end


a,b,c = input()
if a != nil
  puts "max value"
  puts maxValue(a,b,c)
else
  puts "Icorrect data"
end
