class Category < ActiveRecord::Base
  attr_accessible :name, :required, :category
  
  has_many :ingredients
end
