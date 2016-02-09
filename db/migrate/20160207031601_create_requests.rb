class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.integer :urgency_scale
      t.string :location
      t.string :category
      t.text :description
      t.text :actions_attempted

      t.timestamps null: false
    end
  end
end
