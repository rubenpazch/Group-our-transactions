class AddColumnActiveToWishlist < ActiveRecord::Migration[6.0]
  def change
    add_column :wishlists, :active, :boolean
  end
end
