class CreateSchedules < ActiveRecord::Migration[5.2]
  def change
    create_table :schedules do |t|
      t.integer :evaluation_id
      t.integer :user
      t.date :day
      t.string :schedule_title
      t.time :start_time
      t.time :finish_time
      t.text :schedule_details

      t.timestamps
    end
  end
end
