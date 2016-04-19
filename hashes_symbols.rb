#hash no symbol
cars = {
	"Make" => "BMW",
	"Model" => "328xi",
	"Color" => "White"
}

cars.each do |key, value|
	puts "#{key}: #{value}."
end

#hash with symbol
cars_2 = {
	:make => "BMW",
	:model => "328xi",
	:color => "White"
}

puts cars_2[:model]

#hash with symbol no =>
cars_3 = {
	make: "BMW",
	model: "328xi",
	color: "White"
}

puts cars_3[:color]