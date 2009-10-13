class CreatePhones < ActiveRecord::Migration
  def self.up
    create_table :phones do |t|
      t.string :strPhoneNumber
      t.integer :contact_id
      t.integer :phone_type_id

      t.timestamps
    end
  end

  def self.down
    drop_table :phones
  end
end
