class AddIndexToRelationship < ActiveRecord::Migration[5.2]
  def add
  	add_index :relationships, :following_id, :unique => true
  end
end
