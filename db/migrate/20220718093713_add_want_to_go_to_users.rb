class AddWantToGoToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :want_to_go, :boolean
  end
end
