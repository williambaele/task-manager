class ChangeStatus < ActiveRecord::Migration[7.0]
  def change
    add_column :tasks, :task_done, :boolean

  end
end
