#attr_writer are setters, attr_readers are getters
class Pets
	attr_writer :name, :breed
	attr_reader :name, :breed
end

class Dogs < Pets
	def bark
		return "woof woof!"
	end
end

class Cats < Pets
	def meow
		return "meowwww!"
	end
end

my_dog = Dogs.new
my_dog.name = "Donski"
my_dog.breed = "Boxer"
dogname = my_dog.name
dogbreed = my_dog.breed

my_cat = Cats.new
my_cat.name = "Louise"
my_cat.breed = "Abyssinian"
catname = my_cat.name
catbreed = my_cat.breed

puts "My dog #{dogname}, a #{dogbreed}, says #{my_dog.bark}"
puts "My cat #{catname}, a #{catbreed}, says #{my_cat.meow}"