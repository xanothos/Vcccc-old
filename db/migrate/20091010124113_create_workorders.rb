class CreateWorkorders < ActiveRecord::Migration
  def self.up
    create_table :workorders do |t|
      t.string :strProblemDescription
      t.string :strBriefDescription
      t.timestamp :dtEstimatedStartTime
      t.date :dtEndDate
      t.date :dtStartDate
      t.integer :contact_id
      t.integer :technician_id
      t.string :strSolution

      t.timestamps
    end
  end

  def self.down
    drop_table :workorders
  end
end
