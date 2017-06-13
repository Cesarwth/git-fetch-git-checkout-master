class ContactMailer < ApplicationMailer
  default from: 'info@terranova.com.ec'

  def contact_email(name, email)
    mail(to: email, subject: 'Urbanización Terranova')
  end
end
