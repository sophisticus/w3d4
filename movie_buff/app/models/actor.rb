class Actor < ActiveRecord::Base
	has_many :castings
	has_many :movies, through: :castings
	has_many :directed_movies,
		foreign_key: :director_id,
		class_name: "Movie"

    # Actor has many castings
    # Actor has many movies THROUGH castings
    # Actor has many ?? 

end
