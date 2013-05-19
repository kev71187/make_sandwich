class Ingredient < ActiveRecord::Base
  attr_accessible :category_id, :name, :cost

  belongs_to :catgory
  has_many :contents
  has_many :orders, :through => :contents 
end
