class ContactsController < ApplicationController

  def new
    @map_key = ENV['GOOGLE_MAP_API_KEY']
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
      if @contact.deliver
        flash.now[:error] = nil
      else
        flash.now[:error] = 'Cannot send message.'
        render :new
      end
  end

end
