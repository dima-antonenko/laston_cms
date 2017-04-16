class PostAvatarUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick

  storage :file

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  version :edit_thumb do
    process resize_to_fill: [240,240]
  end

  version :page_show do
    process resize_to_fill: [1170,610]
  end

  version :page_show_related_items do
    process resize_to_fill: [345,243]
  end

  #случайные записи на странице категории
  version :page_category_related_items do
    process resize_to_fill: [70,49]
  end
  
  #страница категории
  version :page_category do
    process resize_to_fill: [345,243]
  end

end
