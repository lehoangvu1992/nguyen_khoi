class Product < ActiveRecord::Base
	belongs_to :user
	belongs_to :category
	belongs_to :type
	paginates_per 1
	has_attached_file :image , styles: { large: "1200x1200>", medium: "300x300>", thumb: "150x150#"}
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
