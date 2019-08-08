class CreateFighters < ActiveRecord::Migration[5.2]
  def change
    create_table :fighters do |t|
      t.string :name
      t.integer :health
      t.integer :attack
      t.integer :defense
      t.string :avatar
      t.integer :level
      t.integer :exp
      t.integer :winrate

      t.timestamps
    end
  end
end
