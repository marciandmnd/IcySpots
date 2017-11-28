class AddS3BucketObjectKeyToMedia < ActiveRecord::Migration[5.0]
  def change
    add_column :media, :s3_bucket_object_key, :string
  end
end
