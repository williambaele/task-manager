class StatusTask < ActiveRecord::Migration[7.0]
  def change
    change_column :tasks, :task_done, :boolean, default: false
  end
end
