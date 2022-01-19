class RemoveReviewFromRestaurants < ActiveRecord::Migration[6.1]
  def change
    remove_column :restaurants, :review, :integer
  end
end
