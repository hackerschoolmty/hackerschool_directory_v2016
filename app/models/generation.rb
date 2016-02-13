class Generation < ActiveRecord::Base
  has_many :hackers
  has_many :courses

  validates :name, presence: {message: "no puede estar en blanco :(" } 
end
