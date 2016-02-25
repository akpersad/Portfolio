class CreateGitHubs < ActiveRecord::Migration
  def change
    create_table :git_hubs do |t|
      t.string :project_name
      t.timestamps null: false
    end
  end
end
