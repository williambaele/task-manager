class AddUserToTask < ActiveRecord::Migration[7.0]
  def change
    add_reference :tasks, :user, index: true
  end
end
