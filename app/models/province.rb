class Province < ActiveRecord::Base
  attr_accessible :gst_rate, :hst_rate, :name, :pst_rate
  
  has_many :customers
end
