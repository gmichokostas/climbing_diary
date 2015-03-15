class CreateAreas < ActiveRecord::Migration
  def change
    create_table :areas do |t|
      t.string :area_name
      t.references :route, index: true

      t.timestamps null: false
    end
    add_foreign_key :areas, :routes
  end
end
