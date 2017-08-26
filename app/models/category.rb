class Category < ApplicationRecord
  has_attached_file :image, styles: { medium: '300x300>', thumb: '100x100>' }, default_url: '/images/:style/missing.png'
  has_attached_file :doc1
  has_attached_file :doc2
  has_attached_file :doc3

  validates_attachment :image,
                       presence: true,
                       content_type: { content_type: %w[image/jpeg image/png] }
  validates_attachment :doc1,
                       content_type: { content_type: %w[application/pdf] }
  validates_attachment :doc2,
                       content_type: { content_type: %w[application/pdf] }
  validates_attachment :doc3,
                       content_type: { content_type: %w[application/pdf] }
end
