class RenameTypeToAddressTypeInAddressType < ActiveRecord::Migration
  def self.up
 	rename_column :address_types, :type, :address_type
  end

  def self.down
 	rename_column :address_types, :address_type, :type
  end
end
