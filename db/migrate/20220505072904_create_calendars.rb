class CreateCalendars < ActiveRecord::Migration[6.0]
  def change
    create_table :calendars do |t|
      t.string   :title,      null: false
      t.text     :context,    null: false
      t.date     :start_time, null: false

      t.timestamps
    end
  end
end
