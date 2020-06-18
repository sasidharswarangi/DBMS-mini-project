class CreateShips < ActiveRecord::Migration[6.0]
  def change
    create_table :ships do |t|
      t.string :name
      t.string :ship_type
      t.references :insurance, null: true, foreign_key: true
      t.string :captain
      t.string :beginning
      t.string :destination

      t.timestamps
    end
  end
end
