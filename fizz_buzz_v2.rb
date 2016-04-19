i = 1

while(i <= 100)
	if ( i % 5 == 0 && i % 3 == 0 ) then
    puts "FizzBuzz"
  elsif ( i % 5 == 0 ) then
    puts "Buzz"
  elsif ( i % 3 == 0 ) then
    puts "Fizz"
  else
    puts i
  end
  i += 1
end

