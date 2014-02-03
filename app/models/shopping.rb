class Shopping < ActiveRecord::Base
  attr_accessible :account_id, :amount, :bill_number, :date, :merchant_id, :products_attributes

  has_many :products
  belongs_to :merchant
  belongs_to :account

  accepts_nested_attributes_for :products, allow_destroy: true
end
