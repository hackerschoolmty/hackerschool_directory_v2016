class AddDescriptionToHacker < ActiveRecord::Migration
  def change
    add_column :hackers, :description, :string
  end
end
