class CreateRoutes < ActiveRecord::Migration
  def change
    create_table :routes do |t|
      t.string :name
      t.string :grade
      t.text :description
      t.string :crag
      t.string :area
      t.datetime :date
      t.references :country, index: true

      t.timestamps null: false
    end
    add_foreign_key :routes, :countries
  end
end
