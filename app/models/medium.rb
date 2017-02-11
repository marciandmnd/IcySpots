class Medium < ApplicationRecord
  belongs_to :user
  belongs_to :spot

  before_destroy :delete_from_s3

  private

  def delete_from_s3
    S3_BUCKET.delete_objects({
      delete: {
        objects: [
          {key: self.s3_bucket_object_key}
        ]
      }  
    })
  end
end
