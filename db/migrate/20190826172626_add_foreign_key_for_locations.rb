class AddForeignKeyForLocations < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :locations, :things
  end
end
