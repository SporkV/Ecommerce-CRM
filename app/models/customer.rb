class Customer < ActiveRecord::Base
  attr_accessible :email, :full_name, :image, :notes, :phone_number, :province_id
  validates :full_name, :presence => true
  
  belongs_to :province
end
