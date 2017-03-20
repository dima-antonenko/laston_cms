class ProductCategory < ActiveRecord::Base

  extend FriendlyId
  friendly_id :slug, use: :slugged

  mount_uploader :avatar, ProductCategoryAvatarUploader

  has_many :product_categories
  belongs_to :product_category

  has_many :products

  validates :name, presence: true
  validates :description, presence: true

end