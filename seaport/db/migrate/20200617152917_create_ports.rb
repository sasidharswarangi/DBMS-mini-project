class CreatePorts < ActiveRecord::Migration[6.0]
  def change
    create_table :ports do |t|
      t.string :name
      t.string :license
      t.string :address
      t.string :phone_number

      t.timestamps
    end
  end
end
