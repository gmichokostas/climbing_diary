class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries do |t|
      t.string :country_name
      t.references :route, index: true

      t.timestamps null: false
    end
    add_foreign_key :countries, :routes
  end
end
