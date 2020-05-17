class CreateWishlistsGroups < ActiveRecord::Migration[6.0]
  def change
    create_table :wishlists_groups do |t|
      t.references :wishlist, null: false, foreign_key: true
      t.references :group, null: false, foreign_key: true
      t.timestamps
    end
  end
end
