class CreateCountries < ActiveRecord::Migration[6.0]
  def change
    create_table :countries do |t|
      t.string :name, null: false, unique: true
      t.string :two_letter_code, unique: true
      t.string :three_letter_code, unique: true
      t.string :three_digit_code, unique: true
      t.references :global_area, null: true, foreign_key: true

      t.timestamps
    end
  end
end
