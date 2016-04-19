#puts "How are you feeling?"
#description = gets.chomp.downcase

#while description = gets.chomp.downcase
 # if 	(description.downcase == "good")
  #  puts "I love you"
  #else puts "I still love you"
  #end
#end


love_notes = [
	"My sweetie, I love you",
	"You are the best!",
	"Can't imagine my life without you",
	"The world's greatest darling."
]
 
total_notes = love_notes.size
notes_displayed = 0
 
while (notes_displayed < total_notes)
	puts love_notes[notes_displayed]
	notes_displayed += 1
end