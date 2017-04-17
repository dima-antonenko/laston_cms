class ProductAvatarUploader < CarrierWave::Uploader::Base

  include CarrierWave::MiniMagick

  storage :file

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  version :administrator_edit_thumb do
    process resize_to_fill: [300,300]
  end

  #страница категории
  version :page_category do
    process resize_to_fill: [300,366]
  end

  #страница товара основное изображение
  version :page_product_main do
    process resize_to_fill: [420,512]
  end  

  

end