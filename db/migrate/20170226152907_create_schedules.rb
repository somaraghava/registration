class CreateSchedules < ActiveRecord::Migration[5.0]
  def change
    create_table :schedules do |t|
      t.date :date
      t.time :time
      t.float :weight
    end
  end
  drop_table :schedules
end


