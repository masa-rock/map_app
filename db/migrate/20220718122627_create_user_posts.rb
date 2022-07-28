class CreateUserPosts < ActiveRecord::Migration[7.0]
  def change
    create_table :user_posts do |t|
      t.integer :user_id
      t.integer :post_id
      t.string :title
      t.float :assessment
      t.text :description
      t.string :stay_time
      t.boolean :favorite
      t.boolean :want_to_go

      t.timestamps
    end
  end
end
