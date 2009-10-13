class CreateEmails < ActiveRecord::Migration
  def self.up
    create_table :emails do |t|
      t.string :strAddress
      t.integer :contact_id
      t.integer :email_type_id
      t.boolean :bUseForNotification

      t.timestamps
    end
  end

  def self.down
    drop_table :emails
  end
end
