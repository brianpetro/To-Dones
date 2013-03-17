class CreateToDones < ActiveRecord::Migration
  def change
    create_table :to_dones do |t|

      t.timestamps
    end
  end
end
