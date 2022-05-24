class AddExtraInfoToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :phone, :string
    add_column :users, :education, :string
    add_column :users, :country, :string
    add_column :users, :state, :string
  end
end
