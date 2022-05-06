class CreatePetInformations < ActiveRecord::Migration[6.0]
  def change
    create_table :pet_informations do |t|
      t.string   :name,     null: false
      t.string   :sex,      null: false
      t.string   :kinds
      t.string   :color,    null: false
      t.date     :birthday, null: false

      t.timestamps
    end
  end
end
