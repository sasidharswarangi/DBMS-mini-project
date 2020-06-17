class CreateDocks < ActiveRecord::Migration[6.0]
  def change
    create_table :docks do |t|
      t.boolean :occupied
      t.string :size
      t.string :dock_number

      t.timestamps
    end
  end
end
