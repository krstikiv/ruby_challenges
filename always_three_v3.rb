def always_three
  print "Give me a number:"
  user_input = gets.to_i

  puts "Final number is #{(((user_input + 5) * 2 -4 )/ 2 - user_input)}."
end

always_three
