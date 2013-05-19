class User < ActiveRecord::Base
  attr_accessible :email, :password, :password_confirmation
  
  has_many :orders
  acts_as_authentic
end
