class PagesController < ApplicationController

  def index
    # sort_attribute = params[:sort_by] || 
    @posts = Post.all  # .order(sort_attribute)
    render 'index.html.erb'
  end

  def about
    render 'about.html.erb'
  end

  def blog
    render 'blog.html.erb'
  end

  def services
    render 'services.html.erb'
  end

  def basic
    render 'basic.html.erb'
  end

  def pro
    render 'pro.html.erb'
  end

  def premium
    render 'premium.html.erb'
  end

  def contact
    render 'contact.html.erb'
  end

end
