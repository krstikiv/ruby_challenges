print "Give me a number:"
user_input = gets.to_i
final_number = user_input

final_number += 5
final_number *= 2
final_number -= 4
final_number /= 2
final_number -= user_input

puts "Final number is #{final_number}"
