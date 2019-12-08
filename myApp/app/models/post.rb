class Post < ApplicationRecord
  belongs_to :user 
  has_one_attached :image

  def image_path
    ActiveStorage::Blob.service.path_for(image.key)
  end
end
