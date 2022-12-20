class TasksController < ApplicationController
  require 'date'
  before_action :set_task, only: %i[show edit update destroy put patch]


  def index
    @tasks = Task.all
    @remaining_time = (@task.end_date - DateTime.now).to_i
  end

  def show
    @task = Task.find(params[:id])
    @remaining_time = (@task.end_date - DateTime.now).to_i
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
  def set_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:title, :content, :start_date, :end_date, :difficulty, :task_done, todo: [])
  end
end
