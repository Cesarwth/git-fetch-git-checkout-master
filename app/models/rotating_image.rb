class RotatingImage < ApplicationRecord
  has_attached_file :rotating_file, styles: { medium: '500x500>', thumb: '100x100>' }, default_url: '/images/:style/missing.png'
  validates_attachment :rotating_file,
                       presence: true,
                       content_type: { content_type: %w[image/jpeg image/png] }

      validates :name, :presence => {:message => "Usted debe ingresar el nombre"}, :length => {:minimum => 4, :maximum => 20, :message => "Debe ingresar el nombre entre 4 y 20 caracteres"}
  validates :position, :presence => {:message => "Ingrese la Posición"}, :length => {:minimum => 1, :maximum => 1, :message => "Debe ingresar el nombre entre 4 y 20 caracteres"}, :numericality => {:only_integer => true, :message => "Ingrese solo números"}
end
