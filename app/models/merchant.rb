class Merchant < ActiveRecord::Base
  attr_accessible :address, :contact, :name, :note, :url, :active
end
