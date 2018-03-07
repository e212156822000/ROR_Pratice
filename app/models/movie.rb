require 'elasticsearch/model'

class Movie < ActiveRecord::Base
	
  validates: name, uniqueness: true

  has_an_belong_to_many	:gernres

end
