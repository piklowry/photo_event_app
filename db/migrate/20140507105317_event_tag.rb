class EventTag < ActiveRecord::Migration
  def change
  	create_table :events_tags do |t|
      t.integer :event_id
      t.integer :tag_id
    end
  end
end
