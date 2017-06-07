require 'elasticsearch/model'

class Movie < ActiveRecord::Base
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks

  validates: name, uniqueness: true

  has_an_belong_to_many	:gernres

end
