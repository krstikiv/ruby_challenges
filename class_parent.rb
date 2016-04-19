class Pets
	def set_name= (name)
		@name = name
	end

	def get_name 
		return @name
	end

	def set_breed= (breed)
		@breed = breed
	end

	def get_breed 
		return @breed
	end
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
my_dog.set_name = "Donski"
my_dog.set_breed = "Boxer"
dogname = my_dog.get_name
dogbreed = my_dog.get_breed

my_cat = Cats.new
my_cat.set_name = "Louise"
my_cat.set_breed = "Abyssinian"
catname = my_cat.get_name
catbreed = my_cat.get_breed

puts "My dog #{dogname}, a #{dogbreed}, says #{my_dog.bark}"
puts "My cat #{catname}, a #{catbreed}, says #{my_cat.meow}"