class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.text :abstract

      t.timestamps
    end

    add_index :projects, :title, unique: true

  end
end
