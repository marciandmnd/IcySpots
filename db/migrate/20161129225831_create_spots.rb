class CreateSpots < ActiveRecord::Migration[5.0]
  def change
    create_table :spots do |t|
      t.string :name
      t.string :address
      t.float :latitude
      t.float :longitude
      t.timestamps
    end
  end
end
