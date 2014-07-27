class ContactForm < MailForm::Base
  attribute :name, :validate => true
  attribute :company, :validate => true
  attribute :email, :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i

  attribute :message
  attribute :nickname, :captcha => true

  def headers
    {
      :subject => "New Contact Form Submission",
      :to => "info@cardseliquid.com",
      :from => %("#{name}" <#{email}>)
    }
  end
  
end
