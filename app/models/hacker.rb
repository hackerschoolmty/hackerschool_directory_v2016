class Hacker < ActiveRecord::Base
  validates :name, presence: true
  validates :email, uniqueness: true
  belongs_to :generation
end
