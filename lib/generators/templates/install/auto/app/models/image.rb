class Image < ApplicationRecord
  belongs_to :imageable, polymorphic: true
  has_one_attached :image

  # class SomeModel < ApplicationRecord
  #   has_many :images, -> { order(position: :asc) }, as: :imageable
  # end
  acts_as_list scope: :imageable

  validates :image, content_type: %w[image/png image/jpg image/jpeg]
end
