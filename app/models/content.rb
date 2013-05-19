class Content < ActiveRecord::Base
  attr_accessible :ingredient_id, :order_id
  
  belongs_to :order
  belongs_to :ingredient
end
