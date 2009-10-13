class CreateContactsurveys < ActiveRecord::Migration
  def self.up
    create_table :contactsurveys do |t|
      t.boolean :bReceiveEmail
      t.integer :iMembership
      t.string :strAdvertising
      t.integer :contact_id

      t.timestamps
    end
  end

  def self.down
    drop_table :contactsurveys
  end
end
