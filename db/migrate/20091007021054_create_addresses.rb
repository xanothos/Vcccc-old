class CreateAddresses < ActiveRecord::Migration
  def self.up
    create_table :addresses do |t|
      t.integer :state_id
      t.string :address1
      t.string :address2
      t.string :city
      t.string :postal_code

      t.timestamps
    end
  end

  def self.down
    drop_table :addresses
  end
end
