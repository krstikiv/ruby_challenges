print "Give me a number:"
user_input = gets.chomp.to_i
number_one = user_input

number_one += 5
number_one *= 2
number_one -= 4
number_one /= 2
final_number = number_one - user_input

puts "Final number is #{final_number}"
