require 'pry'

source = [
  { :name => "Byron Poodle", :movies => [
    { :title => "At the park" },
    { :title => "On the couch" },
  ]
  },
  { :name => "Nancy Drew", :movies => [
    { :title => "Biting" },
  ]
  }
]

result = [
  { :title => "At the park", :name => "Byron Poodle" },
  { :title => "On the couch", :name => "Byron Poodle" },
  { :title => "Biting", :name => "Nancy Drew"}
]


def movies_with_directors_set(source)
  result = []
  source.each do |director_movie_hash|
    director_movie_hash[:movies].each do |movie|
      movie_hash = {}
      movie_hash[:movie] = movie
      movie_hash[:director] = director_movie_hash[:name]
      result << movie_hash
    end
  end
  result
  # GOAL: For each director, find their :movies Array and stick it in a new Array
  #
  # INPUT:
  # * source: An Array of Hashes containing director information including
  # :name and :movies
  #
  # RETURN:
  #
  # Array of Arrays containing all of a director's movies. Each movie will need
  # to have a :director_name key added to it.

end

puts movies_with_directors_set(source)
