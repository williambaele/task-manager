class TasksController < ApplicationController
  require 'date'


  def index
    @tasks = Task.all
    @remaining_time = (@task.end_date - DateTime.now).to_i
  end

  def show
    @task = Task.find(params[:id])
    @remaining_time = (@task.end_date - DateTime.now).to_i
  end

  def mark_as_finished
    @task = Task.find(params[:id])
    if @task.update(status: "finished")
      redirect_to task_path(@task)
    else
      redirect_to task_path(@task)
    end
  end

  # CREATE
  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.user_id = current_user.id
    if @task.save!
      redirect_to task_path(@task)
    end
  end

  # UPDATE

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    if @task.update(task_params)
      redirect_to task_path(@task)
    else
      redirect_to root_path
    end
  end

  def destroy
    @task = Task.find(params[:id])
    if @task.destroy!
      redirect_to root_path
    end
  end

  private
  def task_params
    params.require(:task).permit(:title, :content, :start_date, :end_date, :difficulty, :status)
  end
end
