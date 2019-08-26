class AddCommentsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.column :user_id, :integer
      t.column :thing_id, :integer
      t.column :content, :string
      t.timestamps()
    end
  end
end
