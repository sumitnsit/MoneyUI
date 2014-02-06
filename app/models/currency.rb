class Currency < ActiveRecord::Base
  attr_accessible :exchange_rate, :name, :symbol, :active
end
