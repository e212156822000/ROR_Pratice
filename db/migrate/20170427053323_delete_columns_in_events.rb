class DeleteColumnsInEvents < ActiveRecord::Migration[5.0]
  def change
	remove_column :events , :date
  end
end
