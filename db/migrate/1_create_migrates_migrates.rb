class CreateMigratesMigrates < ActiveRecord::Migration

  def up
    add_column :refinery_users, :facebook_access_token, :string
    add_column :refinery_users, :facebook_access_token_expires, :datetime
    add_column :refinery_users, :facebook_access_token_updated_at, :datetime
  end

  def down
    remove_column :refinery_users, :facebook_access_token
    remove_column :refinery_users, :facebook_access_token_expires
    remove_column :refinery_users, :facebook_access_token_updated_at
  end

end
