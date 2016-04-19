print "Please enter your birthday (MMDDYYYY format):"
birthdate = gets.chomp

def birth_path_num(birthdate)
  calculated_num = birthdate[0].to_i + birthdate[1].to_i + birthdate[2].to_i + birthdate[3].to_i + birthdate[4].to_i + birthdate[5].to_i + birthdate[6].to_i + birthdate[7].to_i

  calculated_num = calculated_num.to_s
  calculated_num = calculated_num[0].to_i + calculated_num[1].to_i
  if (calculated_num > 9) then
    calculated_num = calculated_num.to_s
    calculated_num = calculated_num[0].to_i + calculated_num[1].to_i
  end
  return calculated_num
end

def message(birth_num)
  case birth_num
  when 1 then
    puts "NUMBER 1\nOne is the leader. The number one indicates the ability to stand alone, and is a strong vibration. Ruled by the Sun."
  when 2 then
    puts "NUMBER 2\nThis is the mediator and peace-lover. The number two indicates the desire for harmony. It is a gentle, considerate, and sensitive vibration. Ruled by the Moon."
  when 3 then
    puts "NUMBER 3\nNumber Three is a sociable, friendly, and outgoing vibration. Kind, positive, and optimistic, Three’s enjoy life and have a good sense of humor. Ruled by Jupiter."
  when 4 then
    puts "NUMBER 4\nThis is the worker. Practical, with a love of detail, Fours are trustworthy, hard-working, and helpful. Ruled by Uranus."
  when 5 then
    puts "NUMBER 5\nThis is the freedom lover. The number five is an intellectual vibration. These are ‘idea’ people with a love of variety and the ability to adapt to most situations. Ruled by Mercury."
  when 6 then
    puts "NUMBER 6\nThis is the peace lover. The number six is a loving, stable, and harmonious vibration. Ruled by Venus."
  when 7 then
    puts "NUMBER 7\nThis is the deep thinker. The number seven is a spiritual vibration. These people are not very attached to material things, are introspective, and generally quiet. Ruled by Neptune."
  when 8 then
    puts "NUMBER 8\nThis is the manager. Number Eight is a strong, successful, and material vibration. Ruled by Saturn."
  when 9 then
    puts "NUMBER 9\nThis is the teacher. Number Nine is a tolerant, somewhat impractical, and sympathetic vibration. Ruled by Mars."
  else
    puts "Not a valid number."
  end

end

birth_num = birth_path_num(birthdate)
print "Your birth path number is #{birth_num}."
message = message(birth_num)
puts message
