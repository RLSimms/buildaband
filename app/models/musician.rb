class Musician < ActiveRecord::Base
  has_many :bands, :through => :members
  has_many :members
end
