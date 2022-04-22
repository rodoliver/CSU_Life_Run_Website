class AddColumnsForProject < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :bDay, :string
    add_column :users, :admin, :boolean, default:false
    add_column :users, :address, :string
    add_column :users, :city, :string
    add_column :users, :state, :string
    add_column :users, :zip, :integer
    add_column :users, :pNumber, :string
    add_column :users, :username, :string
  end
end
