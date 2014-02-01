class Account < ActiveRecord::Base
  attr_accessible :active, :date, :init_balance, :name, :note
end
