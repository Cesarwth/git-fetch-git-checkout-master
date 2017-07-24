class RotatingImage < ApplicationRecord
  has_attached_file :rotating_file, styles: { medium: '500x500>', thumb: '100x100>' }, default_url: '/images/:style/missing.png'
  validates_attachment :rotating_file,
                       presence: true,
                       content_type: { content_type: %w[image/jpeg image/png] }
end
