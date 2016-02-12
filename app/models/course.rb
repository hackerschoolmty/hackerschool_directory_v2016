class Course < ActiveRecord::Base
  belongs_to :generation

  validates :name, presence: {message: "no puede estar en blanco :(" }
end
