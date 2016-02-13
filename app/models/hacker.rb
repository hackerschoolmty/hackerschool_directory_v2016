class Hacker < ActiveRecord::Base
  validates :name, presence: true
  validates :email, uniqueness: true
  belongs_to :generation
  has_and_belongs_to_many :languages
end
