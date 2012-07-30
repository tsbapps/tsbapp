class CreateMetrics < ActiveRecord::Migration
  def change
    create_table :metrics do |t|
      t.string :name
      t.string :status
      t.string :visibility
      t.date :startdate
      t.date :enddate
      t.string :level
      t.string :frequency
      t.string :usergroup
      t.string :agentpermission
      t.string :companypermission
      t.string :expectedtime
      t.string :permissionlevel
      t.string :summarytype
      t.string :dob
      t.timestamps
    end
  end
end
