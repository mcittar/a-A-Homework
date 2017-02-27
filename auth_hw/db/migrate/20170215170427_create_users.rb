class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username, null: false
      t.string :password_digest, null: false
      t.string :salt
      t.string :session_token
    end
    add_index :users, :username
    add_index :users, :password_digest
    add_index :users, :salt
    add_index :users, :session_token
  end
end
