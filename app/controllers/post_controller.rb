class PostController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    # shineer post vvsgeh
    @post = Post.new(post_params)

     if @post.save
      redirect_to @post
     else
      render 'new'
     end
  end

  def show
    @post = Post.find(params[:id])
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    redirect_to post_index_path
  end

  def edit
    # edit.html
    @post = Post.find(params[:id])
  end

  def update
    puts "=====update method"
    @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to @post
    else
      puts "----#{@post.errors.inspect}"
      render 'edit'
    end
  end

  

  private
  def post_params
    params.require(:post).permit(:title, :text)
  end
end
