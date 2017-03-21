class ProductAttachment < ActiveRecord::Base
  belongs_to :product
  mount_uploader :image, ProductAttacmentUploader

  belongs_to :product
end
