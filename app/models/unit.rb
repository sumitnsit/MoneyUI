class Unit < ActiveRecord::Base
  attr_accessible :active, :name, :note, :symbol, :unit_type
end
