class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.string :name
      t.string :description
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps
    end
    add_reference :events, :company, foreign_key: true
  end
end
