class ChangeAuthorIdToBeIntegerInWishlists < ActiveRecord::Migration[6.0]
  def change
    change_column :wishlists, :author_id, :integer
  end
end
