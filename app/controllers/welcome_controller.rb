class WelcomeController < ApplicationController

  def index
    @contact = ContactForm.new
  end

  def create
    @contact = ContactForm.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash.now[:success] = 'Thank you for contacting us. We will be in touch soon.'
    else
      flash.now[:alert] = 'Cannot send message.'
      render :index
    end
  end

end
