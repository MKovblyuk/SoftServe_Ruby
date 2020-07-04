
#спроба спіймати помилку неправильно введеного аргумента
begin
  #введення ціни
  begin
    puts "Enter price"
    price = Float(gets.chomp)
  end while price < 0

  #введення знижки
  begin
    puts "Enter discount"
    discount = Float(gets.chomp)
  end while discount < 0 or discount > 100

  #введення кількості
  begin
    puts "Enter number"
    number = Integer(gets.chomp)
  end while number < 0

  #підрахунок заощаджених коштів
  saved_amount = (price * discount / 100) * number
  puts "Saved amount = " + saved_amount.round().to_s
rescue ArgumentError
  puts "Incorrect data"
end
