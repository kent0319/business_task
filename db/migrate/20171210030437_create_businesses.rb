class CreateBusinesses < ActiveRecord::Migration
  def change
    create_table :businesses do |t|
      t.string :alerts
      t.date :date
      t.string :title
      t.text :detail

      t.timestamps
    end
  end
end
