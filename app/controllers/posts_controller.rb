class PostsController < ApplicationController
    before_action :set_post, only: [:show]
    def index
      @posts = Post.all
    end

    def show
    end

    def new
        @post = Post.new
    end

    def create
         @post = Post.new(params.require(:post).permit(:date, :rationale))

        if @topic.save
         redirect_to post_path(@post), notice: 'Post was successfully created.'
        else
         render :new
        end
    end
    
    private

    def set_post
      @post = Post.find(params[:id])  
      #@post = Post.friendly.find(params[:id])        

    end

end
