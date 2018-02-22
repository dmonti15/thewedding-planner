class PagesController < ApplicationController

  def index

    # sort_attribute = params[:sort_by] || 
    @posts = Post.all  # .order(sort_attribute)
    render 'index.html.erb'
  end

  def about
    render 'about.html.erb'
  end

  def contact
    render 'contact.html.erb'
  end
end
