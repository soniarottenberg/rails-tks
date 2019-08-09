class AddDefaultValuesToFighters < ActiveRecord::Migration[5.2]
  def change
    change_column :fighters, :level, :integer, :default => 1
    change_column :fighters, :exp, :integer, :default => 0
  end
end
