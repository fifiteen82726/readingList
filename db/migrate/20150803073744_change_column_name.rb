class ChangeColumnName < ActiveRecord::Migration
  def change
  	rename_column :books, :auther, :author
  end
end
