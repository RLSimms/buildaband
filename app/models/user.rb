class User < ActiveRecord::Base
  belongs_to :band
  validates :username, presence: true, uniqueness: true
end
