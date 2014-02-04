class Account < ActiveRecord::Base
  attr_accessible :active, :date, :init_balance, :name, :note, :currency_id

  belongs_to :currency
end
