class Upload < ApplicationRecord


  include FileUploader.attachment(:image)

  belongs_to :model
  validates :tof ,acceptance: { accept: ['video' , 'image' , 'pdf'] }
end
