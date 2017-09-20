class ContactMailer < ApplicationMailer
  default from: 'info@terranova.com.ec'

  def contact_email(_name, email)
    mail(to: email, subject: 'Urbanización Terranova')
  end

  def manager_email(args)
    mail(to: Contact.first.email, subject: 'Notificación de contacto') do |format|
      format.html {
        render 'manager_email', locals: { user_info: args }
      }
      format.text {
        render 'manager_email', locals: { user_info: args }
      }
    end
  end
end
