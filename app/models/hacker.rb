class Hacker < ActiveRecord::Base
  belongs_to :generation
  has_and_belongs_to_many :languages

  validates :name, presence: true
  validates :email, :github_account, uniqueness: true
end
