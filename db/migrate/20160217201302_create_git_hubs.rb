class CreateGitHubs < ActiveRecord::Migration
  def change
    create_table :git_hubs do |t|

      t.timestamps null: false
    end
  end
end
