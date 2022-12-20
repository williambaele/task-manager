class DeleteStatusFromUser < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :task_done

  end
end
