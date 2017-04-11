class MenuItem < ActiveRecord::Base
  
  has_many :menu_items, dependent: :destroy  


  belongs_to :menu, counter_cache: true
  belongs_to :menu_item


  validates :title, presence: true
  validates :url, presence: true
  validates :position, presence: true

end