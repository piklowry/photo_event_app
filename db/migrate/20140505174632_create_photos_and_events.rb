class CreatePhotosAndEvents < ActiveRecord::Migration
  def change
    create_table :photos do |t|
    	t.string :name
    end

    create_table :events do |t|
    	t.string :title
    	t.string :description
    	t.string :location
    end


    create_table :events_photos, id: false do |t|
    t.integer :event_id
    t.integer :photo_id 
  end
end
end
