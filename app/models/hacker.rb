class Hacker < ActiveRecord::Base
  belongs_to :generation
  has_and_belongs_to_many :languages
end
