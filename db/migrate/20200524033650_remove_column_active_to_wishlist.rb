class RemoveColumnActiveToWishlist < ActiveRecord::Migration[6.0]
  def change
    
    remove_column :wishlists, :description, :text
  end
end
