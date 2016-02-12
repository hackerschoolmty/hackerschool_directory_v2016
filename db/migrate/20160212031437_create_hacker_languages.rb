class CreateHackerLanguages < ActiveRecord::Migration
  def change
    create_table :hacker_languages do |t|
      t.integer :hacker_id
      t.integer :language_id

      t.timestamps null: false
    end
  end
end
