class CreateDiaries < ActiveRecord::Migration[6.0]
  def change
    create_table :diaries do |t|
      t.string   :title,  null: false
      t.date     :day,    null: false
      t.integer  :rate,   null: false
      t.text     :event,  null: false

      t.timestamps
    end
  end
end
