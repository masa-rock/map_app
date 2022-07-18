class RemoveWantToGoFromUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :want_to_go, :boolean
  end
end
