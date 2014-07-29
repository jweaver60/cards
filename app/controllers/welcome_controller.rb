class WelcomeController < ApplicationController

  def index
    @contact = ContactForm.new
  end

  def create
    @contact = ContactForm.new(params[:contact_form])
    @contact.request = request
    if @contact.deliver
      flash.now[:success] = 'Thank you for contacting us. We will get in touch soon.'
      redirect_to :index
    else
      flash.now[:alert] = 'Cannot send message.'
      redirect_to :index
    end
  end

end
