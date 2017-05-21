class AddUserIdToGooggler < ActiveRecord::Migration[5.0]
  def change
    add_column :googglers, :user_id, :integer
  end
end
