class DashboardController < ApplicationController
  protect_from_forgery
  def index
    @contact = Contact.first
    @categories = Category.all
    @rotating_images = RotatingImage.all
    render 'landing/index'
  end

  def send_mail
    name = params[:name]
    email = params[:email]

    respond_to do |format|
      if name && email
        # Tell the UserMailer to send a welcome email after save
        ContactMailer.contact_email(name, email).deliver_later
        ContactMailer.manager_email(params.as_json).deliver_later
        format.html
        format.js
      end
    end
  end

end
