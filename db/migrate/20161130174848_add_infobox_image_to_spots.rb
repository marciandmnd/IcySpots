class AddInfoboxImageToSpots < ActiveRecord::Migration[5.0]
  def change
    add_column :spots, :infobox_image, :string
  end
end
