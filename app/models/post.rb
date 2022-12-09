class Post < ApplicationRecord
	validates :title, presence: true
	validates :body, presence: true
	before_destroy :say_hello


	def say_hello
		puts "Hello There"
	end
end
