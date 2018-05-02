# Genre model class
class Genre < ActiveRecord::Base
  has_many :films
end
