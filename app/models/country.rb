class Country < ActiveRecord::Base
  has_many :cities
  has_many :people
end
