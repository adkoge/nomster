class Comment < ActiveRecord::Base
	belongs_to :user
	belongs_to :place

	RATINGS = {
		'one star'      => '1_star',
		'two star'      => '2_stars',
		'three stars'   => '3_stars',
		'four stars'    => '4_stars',
		'five stars'    => '5_stars',
	}

	def humanized_rating
		RATINGS.invert[self.rating]
	end
end
