class AddLocationsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :locations do |t|
      t.column :thing_id, :integer
      t.column :lat, :integer
      t.column :long, :integer
    end
  end
end
