class Medicine < ApplicationRecord
  mount_uploader :image1, ImagesUploader
  mount_uploader :image2, ImagesUploader
  belongs_to :hospital
end
