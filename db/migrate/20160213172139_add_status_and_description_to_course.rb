class AddStatusAndDescriptionToCourse < ActiveRecord::Migration
  def change
    add_column :courses, :status, :string
    add_column :courses, :description, :string
  end
end
