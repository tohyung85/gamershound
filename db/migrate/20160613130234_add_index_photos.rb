class AddIndexPhotos < ActiveRecord::Migration
  def change
  end
  add_index :photos, [:place_id]
end
