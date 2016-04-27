class ChangeColumnNameBrithDate < ActiveRecord::Migration
  def change
  	rename_column :users, :brith_date, :birth_date
  end
end
