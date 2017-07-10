class DashboardController < ApplicationController

  def index
    @contact = Contact.first
    render 'landing/index'
  end

  def send_mail
    name = params[:name]
    email = params[:email]

    respond_to do |format|
      if name && email
        # Tell the UserMailer to send a welcome email after save
        ContactMailer.contact_email(name, email).deliver_later
        format.html
        format.js
      end
    end
  end

end
