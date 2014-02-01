class Product < ActiveRecord::Base
  attr_accessible :amount, :category_id, :name, :quantity, :rate, :unit_id

  belongs_to :category
  belongs_to :unit
  belongs_to :shopping
  
end
