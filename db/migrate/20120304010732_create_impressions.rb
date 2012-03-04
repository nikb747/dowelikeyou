class CreateImpressions < ActiveRecord::Migration
  def change
    create_table :impressions do |t|
      t.string :status
      t.integer :user_id

      t.timestamps
    end
  end
end
