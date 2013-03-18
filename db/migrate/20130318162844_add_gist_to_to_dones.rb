class AddGistToToDones < ActiveRecord::Migration
  def change
    add_column :to_dones, :gist, :text
  end
end
