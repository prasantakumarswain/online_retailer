class Review < ActiveRecord::Base
  belongs_to :product
  attr_accessible :content, :customer_name, :product_id
end
