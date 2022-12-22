class PagesController < ApplicationController
  require 'date'

  def index
    @tasks = Task.all

    @my_tasks = Task.all.order('end_date ASC').select do |task|
      task.user_id == (current_user&.id)
    end

    @not_finished_tasks = @my_tasks.select do |task|
      task.status == "process"
    end

    @not_finished_tasks = @not_finished_tasks.sort_by { |task| task.end_date }


    @done_tasks = @my_tasks.select do |task|
      task.status == "finished"
    end


    today = Date.today
    @urgent_tasks = @my_tasks.select do |task|
      task.end_date <= today + 3.days
    end
    @urgent_tasks = @urgent_tasks.count
  end
end
