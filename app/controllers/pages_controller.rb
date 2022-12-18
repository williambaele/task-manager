class PagesController < ApplicationController
  require 'date'

  def index
    @tasks = Task.all

    @my_tasks = Task.all.order('updated_at DESC').select do |task|
      task.user_id == current_user.id
    end
  end
end
