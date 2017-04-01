class Order < ActiveRecord::Base
  has_many :line_items, dependent: :destroy

  validates :customer_name, presence: true
  validates :customer_phone, presence: true



  
end
