class CreateListitems < ActiveRecord::Migration
  def self.up
    create_table :listitems do |t|
      t.string :strListName
      t.string :strListValue

      t.timestamps
    end
  end

  def self.down
    drop_table :listitems
  end
end
