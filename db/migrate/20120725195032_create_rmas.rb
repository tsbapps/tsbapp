class CreateRmas < ActiveRecord::Migration
  def change
    create_table :rmas do |t|
      t.string :title
      t.integer :dailycount
      t.integer :mtd

      t.timestamps
    end
  end
end
