class CreateReminders < ActiveRecord::Migration
  def change
    create_table :reminders do |t|
      t.string :message
      t.datetime :date

      t.timestamps
    end
  end
end
