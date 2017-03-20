class ProductQuestion < ActiveRecord::Base
	validates :name, presence: true
	validates :phone, presence: true
	validates :text, presence: true
	validates :product_id, presence: true
end
