# Director model class
class Director < ActiveRecord::Base
  has_many :films
end
