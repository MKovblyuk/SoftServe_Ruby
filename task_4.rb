
def function(a,k)
  return "#{a*k}x^#{k-1}"
end

#спроба спіймати помилку неправильно введеного аргумента
begin
  #введеня аргуманта а
  begin
    puts "enter a"
    a = Integer(gets.chomp)
  end while(a < 1)

  #введення аргумента k
  begin
    puts "enter k"
    k = Integer(gets.chomp)
  end while(k < 2)

  puts function(a,k)
rescue ArgumentError
  puts "Incorrect data"
end
