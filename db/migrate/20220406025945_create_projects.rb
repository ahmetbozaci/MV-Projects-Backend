class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :repo_link
      t.string :live_link
      t.string :picture
      t.string :description
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
