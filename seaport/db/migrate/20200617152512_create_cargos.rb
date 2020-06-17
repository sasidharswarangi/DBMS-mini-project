class CreateCargos < ActiveRecord::Migration[6.0]
  def change
    create_table :cargos do |t|
      t.integer :selling_company_id
      t.integer :buying_company_id
      t.string :container_number
      t.integer :container_value
      t.string :goods

      t.timestamps
    end
  end
end
