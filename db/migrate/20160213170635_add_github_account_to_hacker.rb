class AddGithubAccountToHacker < ActiveRecord::Migration
  def up
    add_column :hackers, :github_account, :string
  end

  def down
    remove_column :hackers, :github_account
  end
end
