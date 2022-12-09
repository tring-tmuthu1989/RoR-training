class PostsController < ApplicationController
	before_action :set_post, except: [:index, :new, :create]

	def index
		@posts = Post.all
	end

	def new
		puts "asdfasdfasdf"
		@post = Post.new
	end

	def create
		@post = Post.new(post_param)

    respond_to do |format|
      if @post.save
        format.html { redirect_to posts_url, notice: "Post was successfully created." }
        format.json { render :show, status: :created, location: @post }
        format.js
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @post.errors, status: :unprocessable_entity }
        format.js
      end
    end
	end

	def update
		if @post.update(post_param)
			redirect_to posts_url, notice: "Post Updated successfully!"
		else
			render :edit
		end
	end

	def destroy
		@post.destroy
		redirect_to posts_url, notice: "Post deleted"
	end


	private

		def set_post
			@post = Post.find(params[:id])
		end

		def post_param
			params.require(:post).permit(:title, :body)
		end
end
