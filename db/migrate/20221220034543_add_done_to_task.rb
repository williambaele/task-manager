class AddDoneToTask < ActiveRecord::Migration[7.0]
  def change
    add_column :tasks, :done, :boolean, default: false
  end
end
