class Civilian < ActiveRecord::Base
	has_one  :job, :dependent => :destroy
    	has_many :shoes, :dependent => :destroy
    	has_and_belongs_to_many :interests, :dependent => :destroy
end
