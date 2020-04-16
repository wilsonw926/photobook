class Album < ApplicationRecord
  has_one_attached :album_cover_photo
  has_many_attached :images
end
