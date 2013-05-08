class Band < ActiveRecord::Base
  has_many :songs
  has_many :albums
  has_many :members
  has_many :musicians, :through => :members
  has_many :users

  validates :name, :uniqueness => true
  validates :name, :presence => true
  validates :hometown, :presence => true
  validates :image, :presence => true
end
