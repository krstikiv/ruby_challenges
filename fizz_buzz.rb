1.upto(100).each do |num|

  if ( num % 5 == 0 && num % 3 == 0 ) then
    puts "FizzBuzz"
  elsif ( num % 5 == 0 ) then
    puts "Buzz"
  elsif ( num % 3 == 0 ) then
    puts "Fizz"
  else
    puts num
  end
end


