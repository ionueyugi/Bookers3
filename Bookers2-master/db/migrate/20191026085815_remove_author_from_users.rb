class RemoveAuthorFromUsers < ActiveRecord::Migration[5.2]
  def up
    remove_column :users, :user_id, :integer
  end



  def down
  	add_column :titles, :user_id, :integer
  end
end



