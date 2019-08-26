class AddForeignKeyForComments < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :comments, :users
    add_foreign_key :comments, :things
  end
end
