class Category < ActiveRecord::Base
  attr_accessible :active, :name, :note, :parent_id

  belongs_to :parent, :class_name => 'Category', :foreign_key => :parent_id
end
