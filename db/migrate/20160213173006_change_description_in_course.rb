class ChangeDescriptionInCourse < ActiveRecord::Migration
  def change
     rename_column :courses, :description, :comment
  end
end
