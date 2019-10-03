class PostsController < ApplicationController
    def index
        @posts = Post.all
    end
    
    def new
		@post = Post.new
	end
    
    def create
       post = Post.new(post_params)
       post.user_id = current_user.id
       post.save
       
       redirect_to "/"
    end
    
    def show
       @posts = Post.find(params[:id]) 
    end
    
    def destroy
        post = Post.find(params[:id])
        post.delete unless post.user_id != current_user.id
        
        redirect_to "/"
    end
    
    def edit
         @post = Post.find(params[:id])
    end
    
    def update
        post = Post.find(params[:id])
        post.update(post_params) unless post.user_id != current_user.id
         
         redirect_to "/posts/#{post.id}"
     end

    private
	def post_params
		params.require(:post).permit(:caption, :picture)
	end
end