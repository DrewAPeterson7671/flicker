class AddNewForeignKeyForActiveStorageBlobs < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key  :active_storage_blobs, :profiles
  end
end
