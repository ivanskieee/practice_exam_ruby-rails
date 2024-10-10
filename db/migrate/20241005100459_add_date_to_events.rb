class AddDateToEvents < ActiveRecord::Migration[7.1]
  def change
    add_column :events, :start, :datetime
    add_column :events, :end, :datetime
  end
end
