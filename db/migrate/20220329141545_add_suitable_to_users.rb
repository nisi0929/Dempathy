class AddSuitableToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :suitable, :boolean, default: true
  end
end
