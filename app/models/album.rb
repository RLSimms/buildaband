class Album < ActiveRecord::Base
  belongs_to :band
  has_many :songs

  validates :name, :uniqueness => true
end
