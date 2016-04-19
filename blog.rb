class Blog
  @@all_posts = []
  @@total_posts = 0

  def self.all
    @@all_posts
  end

  def self.add(post)
    @@all_posts << post
    @@total_posts += 1
  end

  def self.publish
    @@all_posts.each do |post|
      puts "Title: #{post.get_title}"
      puts "Author: #{post.get_author}"
      puts "Publish Date: #{post.get_publish_date}"
      puts "Post Content: #{post.get_content}"
    end

  end
end

  class Post < Blog
    def self.create
      post = new
      print "Title:"
      post.set_title = gets.chomp
      print "Author:"
      post.set_author = gets.chomp
      post.set_publish_date = Time.now
      print "Post Content:"
      post.set_content = gets.chomp
      post.save

      puts "Do you want to create another post? [Y/N]"
      if ( gets.chomp.downcase == 'y' ) then 
         Post.create
      else
       	Post.publish
        end

    end

    def save
      Post.add(self)
    end

    def set_title=(title)
      @title = title
    end

    def get_title
      return @title
    end

    def set_publish_date=(publish_date)
      @publish_date = publish_date
    end

    def get_publish_date
      return @publish_date
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

  end

  Post.create
  all_posts = Post.all

