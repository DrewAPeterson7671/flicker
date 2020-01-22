class CreateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles do |t|
      t.column :username, :string
      t.column :profile_image_id, :integer
      t.column :user_id, :integer

    end
  end
end
