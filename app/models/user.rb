class User < ApplicationRecord
  belongs_to :role
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable


  validates_confirmation_of :password, :message => "Necesita confirmar la contraseña"
  validates_format_of :email, with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
  validates :phone, numericality: { only_integer: true , :message => "Ingrese solo números en Teléfono"}
  validates :id_card, numericality: { only_integer: true, :message => "Ingrese solo números en Cédula"}
  #validates_presence_of :password_confirmation, if: -> { password.present? }

  #validates :first_name, :presence => {:message => "Usted debe ingresar el nombre"}, :length => {:minimum => 4, :maximum => 20, :message => "Ingrese entre 4 y 20 caracteres"}
  #validates :last_name, :presence => {:message => "Usted debe ingresar el apellido"}, :length => {:minimum => 4, :maximum => 20, :message => "Ingrese entre 4 y 20 caracteres"}
  #validates :phone, :presence => {:message => "Usted debe ingresar el teléfono"}, :length => {:minimum => 4, :maximum => 20, :message => "Ingrese entre 4 y 20 caracteres"}, :numericality => {:only_integer => true, :message => "Ingrese solo números"}
  #validates :id_card, :presence => {:message => "Usted debe ingresar su número de cédula"}, :length => {:minimum => 4, :maximum => 20, :message => "Ingrese entre 4 y 20 caracteres"}
  #validates :email, email: true


  def admin?
    self.role&.name == 'admin'
  end
  def manager?
    self.role&.name == 'manager'
  end
end
