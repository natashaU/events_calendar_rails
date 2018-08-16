class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :start_time
      t.string :end_time
      t.text :description
      t.bigint :day_id

      t.timestamps
    end
  end
end
