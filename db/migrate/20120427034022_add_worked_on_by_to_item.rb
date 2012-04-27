class AddWorkedOnByToItem < ActiveRecord::Migration
  def change
    add_column :items, :workedOnBy, :string

  end
end
