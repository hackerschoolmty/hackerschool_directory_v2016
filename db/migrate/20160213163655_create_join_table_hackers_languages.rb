class CreateJoinTableHackersLanguages < ActiveRecord::Migration
  def change
    create_join_table :hackers, :languages do |t|
      # t.index [:hacker_id, :language_id]
      # t.index [:language_id, :hacker_id]
    end

    #This is another way to do it
  #   create_table :hackers_languages, :id => false do |t|
  #     t.integer :hacker_id
  #     t.integer :language_id
  #   end
  end
end
