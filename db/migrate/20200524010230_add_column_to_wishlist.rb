class AddColumnToWishlist < ActiveRecord::Migration[6.0]
  def change
    add_column :wishlists, :description, :text
  end
end
