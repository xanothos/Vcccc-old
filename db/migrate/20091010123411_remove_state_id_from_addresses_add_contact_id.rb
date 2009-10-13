class RemoveStateIdFromAddressesAddContactId < ActiveRecord::Migration
  def self.up
      remove_column :addresses, :state_id
      add_column :addresses, :strState, :string
      add_column :addresses, :contact_id, :integer
  end

  def self.down
      raise ActiveRecord::IrreversibleMigration, "Can't recover the removed column, state_id"
  end
end
