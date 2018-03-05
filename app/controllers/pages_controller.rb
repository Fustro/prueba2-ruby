class PagesController < ApplicationController
  def index
    @posts = Post.all
  end

  def checker

    if @posts.checked
      @posts.checked = false
    else
      @posts.checked = true
    end

  end

end
