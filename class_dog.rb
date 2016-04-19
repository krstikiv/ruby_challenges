class Dogs
	def set_name= (dog_name)
		@name = dog_name
	end

	def get_name 
		return @name
	end

	def set_breed= (dog_breed)
		@breed = dog_breed
	end

	def get_breed 
		return @breed
	end

	def bark
		return "bark!"
	end
end

my_dog = Dogs.new
my_dog.set_name = "Donski"
my_dog.set_breed = "Boxer"
dogname = my_dog.get_name
dogbreed = my_dog.get_breed

puts "My dog #{dogname}, a #{dogbreed}, loves to #{my_dog.bark}"