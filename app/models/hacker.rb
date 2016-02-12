class Hacker < ActiveRecord::Base
  belongs_to :generation
  has_many :languages, through: :hacker_languages
  has_many :hacker_languages

  validates :email, uniqueness: true
  validates :name, presence: {message: "no puede estar en blanco :(" }

end
