class AddDobToMetrics < ActiveRecord::Migration
  def change
    add_column :metrics, :dob, :date
  end
end
