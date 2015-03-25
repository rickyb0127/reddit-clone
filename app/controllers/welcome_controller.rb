class WelcomeController < PublicController
  def index
    @posts = Post.all
  end
end
