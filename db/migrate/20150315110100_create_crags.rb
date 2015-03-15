class CreateCrags < ActiveRecord::Migration
  def change
    create_table :crags do |t|
      t.string :crag_name
      t.references :route, index: true

      t.timestamps null: false
    end
    add_foreign_key :crags, :routes
  end
end
