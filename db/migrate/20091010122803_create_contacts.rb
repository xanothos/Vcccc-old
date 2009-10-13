class CreateContacts < ActiveRecord::Migration
  def self.up
    create_table :contacts do |t|
      t.string :strFirstname
      t.string :strLastname
      t.string :initial
      t.integer :contact_type_id
      t.integer :security_question_id
      t.string :security_question_answer

      t.timestamps
    end
  end

  def self.down
    drop_table :contacts
  end
end
