class AddGithubAccountToHacker < ActiveRecord::Migration
  def change
    add_column :hackers, :github_account, :string
  end
end
