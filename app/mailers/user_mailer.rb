class UserMailer < ApplicationMailer
  default from: "agnes.bike.berlin@gmail.com"

  def contact_form(email, name, message)
  @message = message
    mail(from: email,
         to: 'agnes.bike.berlin@gmail.com',
         subject: "A new contact form message from #{name}")
  end
end