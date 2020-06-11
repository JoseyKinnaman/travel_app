class AddPlaceIdToComments < ActiveRecord::Migration[5.2]
  def change
    add_column(:comments, :place_id, :integer)
  end
end
