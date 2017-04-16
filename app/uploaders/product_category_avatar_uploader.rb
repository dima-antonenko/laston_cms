class ProductCategoryAvatarUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick

  storage :file

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  version :edit_thumb do
    process resize_to_fill: [240,240]
  end
  
  # большое изображение на странице категории
  version :page_category do
    process resize_to_fill: [871,288]
  end
  
  # блок дочерних категорий на странице категории
  version :page_category_subcategories_list do
    process resize_to_fill: [173,211]
  end


end