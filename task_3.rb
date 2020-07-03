
def getPlanetName(number)

  return case number
          when "1"then "Mercury"
          when "2" then "Venus"
          when "3" then "Earth"
          when "4" then "Mars"
          when "5" then "Jupiter"
          when "6" then "Saturn"
          when "7" then "Uranus"
          when "8" then "Neptune"
          else "incorrect data"
          end
end

puts "Enter the planet number: "
number = gets.chomp

puts getPlanetName(number)
