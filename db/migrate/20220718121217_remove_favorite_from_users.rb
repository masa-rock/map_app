class RemoveFavoriteFromUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :favorite, :boolean
  end
end
