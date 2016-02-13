class Course < ActiveRecord::Base
  belongs_to :generation
  validates :name, presence: true
end
