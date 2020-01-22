class AddForeignKeyForProfiles < ActiveRecord::Migration[6.0]
  def change
        add_foreign_key  :profiles, :users
  end
end
