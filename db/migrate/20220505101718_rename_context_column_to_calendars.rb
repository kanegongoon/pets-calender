class RenameContextColumnToCalendars < ActiveRecord::Migration[6.0]
  def change
    rename_column :calendars, :context, :content
  end
end
