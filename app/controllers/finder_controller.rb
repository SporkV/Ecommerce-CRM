class FinderController < ApplicationController
  def index
    @customers = Customer.all
  end
  
  def missing_email
    @customers = Customer.where("email IS NULL OR email = ''")
  end
end
