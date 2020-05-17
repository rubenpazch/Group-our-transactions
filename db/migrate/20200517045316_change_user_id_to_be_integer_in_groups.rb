class ChangeUserIdToBeIntegerInGroups < ActiveRecord::Migration[6.0]
  def change
    change_column :groups, :user_id, :integer
  end
end
