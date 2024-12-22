class AddFeaturedToVenues < ActiveRecord::Migration[6.1]
  def change
    add_column :venues, :featured, :boolean, default: false
  end
end
