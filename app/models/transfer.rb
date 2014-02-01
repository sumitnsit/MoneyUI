class Transfer < ActiveRecord::Base
  attr_accessible :amount, :date, :from_account_id, :note, :to_account_id

  belongs_to :from, :class_name => 'Account', :foreign_key => :from_account_id
  belongs_to :to, :class_name => 'Account', :foreign_key => :to_account_id

end
