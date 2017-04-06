class Product < ActiveRecord::Base
  
  extend FriendlyId
  friendly_id :slug, use: :slugged

  belongs_to :product_category

  mount_uploader :avatar, ProductAvatarUploader

  attr_accessor :checked_products, :checked_action

  has_many :product_attacments
  has_many :line_items, dependent: :destroy
  has_many :product_questions, dependent: :destroy


  validates :name, presence: true
  validates :price, presence: true
  validates :product_category_id, presence: true

  validates_uniqueness_of :slug


end
