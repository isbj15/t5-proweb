class Interest < ActiveRecord::Base
	has_and_belongs_to_many :civilians, :dependent => :destroy
end
