class Comment < ActiveRecord::Migration
  def change
  	create_table :comments do |t|
  	t.text    :message
    t.integer :liked_id
    t.string  :liked_type
  end
end
end
