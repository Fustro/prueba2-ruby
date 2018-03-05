class PagesController < ApplicationController

  def index
    @posts = Post.all
  end

  def checker
    params.require(:post).permit(:checked)

    if @post.checked
      @post = false
    else
      @post = true
    end



  end

end
