class AddThingsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :things do |t|
      t.column :name, :string
      t.column :content, :string
      t.column :rating, :integer
      t.column :tag, :string
      t.timestamps()
    end
  end
end
