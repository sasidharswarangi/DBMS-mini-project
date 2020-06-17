class CreateInsurances < ActiveRecord::Migration[6.0]
  def change
    create_table :insurances do |t|
      t.references :company, null: false, foreign_key: true
      t.string :insurance_type
      t.string :premium
      t.string :insurance_number
      t.references :cargo

      t.timestamps
    end
  end
end
