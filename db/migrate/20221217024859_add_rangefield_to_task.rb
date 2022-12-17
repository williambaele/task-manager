class AddRangefieldToTask < ActiveRecord::Migration[7.0]
  def change
    add_column :tasks, :difficulty, :integer
  end
end
