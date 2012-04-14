class CreateStates < ActiveRecord::Migration
  def change
    create_table :states do |t|
      t.string :state_name
      t.string :state_abbreviation

      t.timestamps
    end
  end
end
