class CreateCalendars < ActiveRecord::Migration[6.0]
  def change
    create_table :calendars do |t|
      t.string   :title
      t.text     :context
      t.date     :start_time

      t.timestamps
    end
  end
end
