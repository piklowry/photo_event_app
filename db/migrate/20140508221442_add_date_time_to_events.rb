class AddDateTimeToEvents < ActiveRecord::Migration
  def change
    add_column :events, :date_time, :date
    add_column :events, :attending, :boolean
  end
end
