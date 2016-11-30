class CreateMedia < ActiveRecord::Migration[5.0]
  def change
    create_table :media do |t|
      t.string :s3_path
      t.references :user, foreign_key: true
      t.references :spot, foreign_key: true
      t.timestamps
    end
  end
end
