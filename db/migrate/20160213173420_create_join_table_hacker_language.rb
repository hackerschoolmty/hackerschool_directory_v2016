class CreateJoinTableHackerLanguage < ActiveRecord::Migration
  def change
    create_join_table :hackers, :languages
  end
end
