class AddFavoriteThroughTable < ActiveRecord::Migration[6.0]
  def change
    create_table :favorite  do |t|
      t.belongs_to :user, index: true
      t.belongs_to :things, index: true
      t.timestamps()
    end
  end
end
