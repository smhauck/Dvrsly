class CreateErgs < ActiveRecord::Migration[6.0]
  def change
    create_table :ergs do |t|
      t.string :name, null: false, unique: true
      t.boolean :active, null: false, default: true
      t.string :homepage
      t.text :description

      t.timestamps
    end
  end
end
