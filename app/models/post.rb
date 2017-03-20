class Post < ActiveRecord::Base
  extend FriendlyId
  friendly_id :slug, use: :slugged

  mount_uploader :avatar, PostAvatarUploader

  belongs_to :post_category

  validates :name, presence: true
  validates :content, presence: true
  validates :lead, presence: true

end
