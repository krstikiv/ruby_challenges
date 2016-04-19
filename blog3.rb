class MyPosts
	@@posts_array = []
	@@posts_count = 0

	def self.all
		@@posts_array
	end

	def self.add(my_post)
		@@posts_array.push(my_post)
		@@posts_count += 1
	end

	def self.publish
		@@posts_array.each do |post|
			puts "Title: #{post.get_title}"
			puts "Content: #{post.get_content}"
			puts "Publish Date: #{post.get_publish_date}"
		end
	end
end

class Posts < MyPosts
	def self.create
		my_post = new
		print "Name of post: "
		my_post.set_title = gets.chomp

		#Could add my statement to get author here.

		print "Enter some content: "
		my_post.set_content=gets.chomp

		my_post.set_publish_date = Time.now
		my_post.post_save

		print "Do you have another post? [Y/N] "
		if(gets.chomp.downcase == 'y')
			create
		end	
	end
	
	def set_title=(title)
		@title = title
	end

	def get_title
		return @title
	end

	def set_author=(author)
		@author = author
	end

	def get_author
		return @author
	end

	def set_content=(content)
		@content = content
	end

	def get_content
		return @content
	end

	def set_publish_date=(publish_date)
		@publish_date = publish_date
	end

	def get_publish_date
		return @publish_date
	end

	def post_save
		Posts.add(self)
	end
end

Posts.create
posts_array = Posts.all
puts posts_array.inspect
Posts.publish