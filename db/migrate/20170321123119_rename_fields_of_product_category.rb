class RenameFieldsOfProductCategory < ActiveRecord::Migration
  def change
    remove_column :product_categories, :seo_title
    remove_column :product_categories, :seo_description
    remove_column :product_categories, :seo_keywords

    add_column :product_categories, :meta_title, :string, index: true, default: "", nil: false
    add_column :product_categories, :meta_description,    :text, index: true, default: "", nil: false
    add_column :product_categories, :meta_keywords,       :text, index: true, default: "", nil: false

  end
end
