class MovieInfo < ActiveRecord::Base
  attr_accessible :actor, :countray, :derector, :image, :movie_id, :movie_type, :title, :year
end
