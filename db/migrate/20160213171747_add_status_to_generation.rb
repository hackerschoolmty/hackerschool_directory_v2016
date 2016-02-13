class AddStatusToGeneration < ActiveRecord::Migration
  def change
    add_column :generations, :status, :string, default: "inactive"
  end
end
