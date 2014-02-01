class Shopping < ActiveRecord::Base
  attr_accessible :account_id, :amount, :bill_number, :date, :merchant_id

  has_many :product
  belongs_to :merchant
  belongs_to :account
end
