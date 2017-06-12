class CivilianInterest < ActiveRecord::Base
	self.table_name = "civilians_interests"
	belongs_to :civilian
  	belongs_to :interest
end
