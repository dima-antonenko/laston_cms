class PostCategory < ActiveRecord::Base
	extend FriendlyId 
  friendly_id :slug, use: :slugged
  
  mount_uploader :avatar, PostCategoryAvatarUploader

  has_many :post_categories, dependent: :destroy
  belongs_to :post_category

  has_many :posts

  validates :name, presence: true
  validates :post_category_id, presence: true

end
