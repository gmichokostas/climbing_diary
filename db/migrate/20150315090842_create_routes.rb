class CreateRoutes < ActiveRecord::Migration
  def change
    create_table :routes do |t|
      t.string :route_name
      t.string :route_grade
      t.text :description
      t.datetime :date

      t.timestamps null: false
    end
  end
end
