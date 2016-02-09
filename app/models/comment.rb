class Comment < ActiveRecord::Base
	belongs_to :user
	belogns_to :place
end
