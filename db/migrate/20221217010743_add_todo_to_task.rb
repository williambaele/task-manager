class AddTodoToTask < ActiveRecord::Migration[7.0]
  def change
    add_column :tasks, :todo, :text
  end
end
