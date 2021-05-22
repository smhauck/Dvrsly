class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :username, null: false, unique: true
      t.boolean :active, null: false, default: true
      t.string :password_digest
      t.string :display_name, null: false
      t.string :nickname
      t.string :email, null: false, unique: true

      t.timestamps
    end
  end
end
