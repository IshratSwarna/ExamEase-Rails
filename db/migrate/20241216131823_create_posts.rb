class CreatePosts < ActiveRecord::Migration[7.1]
  def change
    create_table :posts do |t|
      t.string :title, null: false
      t.text :body
      t.integer :post_type, null: false
      t.boolean :is_active, null: false, default: false

      t.timestamps
    end
  end
end
