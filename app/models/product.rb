class Product < ActiveRecord::Base
  attr_accessible :available, :description, :image, :name, :price#, :photo
  has_many :reviews
  #has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/assets/default.jpg"
  #validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/

  #validates :price,numericality: {greater_than_or_equal_to: 0.01}
  #validates :available,:description,:image,:name,:price ,presence: true
   def self.search(search)
   if search
     find(:all,conditions => ['name like ?',"%#{search}%"])
   else
     find(:all)
   end
   end

end
