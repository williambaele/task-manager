class ChangeValueTodo < ActiveRecord::Migration[7.0]
  def change
    change_column :tasks, :todo, :string
  end
end
