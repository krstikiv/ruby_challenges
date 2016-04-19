puts "Give me a number:"
user_input = gets.to_i

def always_three(num)
  (((num + 5) * 2 -4 )/ 2 - num)
end

puts "Always " + always_three(user_input).to_s + "."
