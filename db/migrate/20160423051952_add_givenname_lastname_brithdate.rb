class AddGivennameLastnameBrithdate < ActiveRecord::Migration
  def change
    add_column :users, :given_name, :string
    add_column :users, :last_name, :string
    add_column :users, :brith_date, :date
  end
end
