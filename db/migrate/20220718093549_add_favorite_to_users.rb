class AddFavoriteToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :favorite, :boolean
  end
end
