class CreateBusinessAlerts < ActiveRecord::Migration
  def change
    create_table :business_alerts do |t|
      t.date :date
      t.string :title
      t.text :detail

      t.timestamps
    end
  end
end
