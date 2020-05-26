class CreateWishlist < ActiveRecord::Migration[6.0]
  def change
    create_table :wishlists do |t|
      t.string :name
      t.integer :price
      t.references :author, foreign_key: {to_table:"users" }
      t.timestamps
    end
  end
end
