class CreateGlobalAreas < ActiveRecord::Migration[6.0]
  def change
    create_table :global_areas do |t|
      t.string :name, null: false, unique: true
      t.boolean :active, null: false, default: true
      t.text :description

      t.timestamps
    end
  end
end
