class PostsController < ApplicationController
  before_action :authorize, only: [:new, :create]

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(params.require(:post).permit(:title))
    if @post.save
      @post.update(user_id: current_user.id)
      flash[:notice] = "post was successfully created"
      redirect_to "/"
    else
      render :new
    end
  end

end
