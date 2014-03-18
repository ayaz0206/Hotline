class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :provider
      t.string :uid
      t.string :email
      t.string :name
      t.string :first_name
      t.string :last_name
      t.string :image
      t.string :refresh_token
      t.string :access_token
      t.timestamp :expires

      t.timestamps
    end
  end
end
