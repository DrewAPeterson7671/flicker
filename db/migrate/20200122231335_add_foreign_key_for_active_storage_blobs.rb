class AddForeignKeyForActiveStorageBlobs < ActiveRecord::Migration[6.0]
  def change
    add_column(:active_storage_blobs, :profile_id, :integer)
  end
end
