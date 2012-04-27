class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :key
      t.string :blackMap
      t.string :blueMap
      t.string :greenMap
      t.boolean :beingWorkedOn

      t.timestamps
    end
  end
end
