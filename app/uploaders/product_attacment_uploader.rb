class ProductAttacmentUploader < CarrierWave::Uploader::Base

  include CarrierWave::MiniMagick

  storage :file

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  version :administrator_edit_thumb do
    process resize_to_fill: [120, 120]
  end

  #страница товара превью под слайдером
  version :page_product_thumb do
    process resize_to_fill: [100,122]
  end

  #страница товара изображение в слайдере
  version :page_product_normal do
    process resize_to_fill: [420,512]
  end
end