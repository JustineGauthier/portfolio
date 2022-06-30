class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.string :url
      t.date :creation_date
      t.references :categorie, null: false, foreign_key: true

      t.timestamps
    end
  end
end
