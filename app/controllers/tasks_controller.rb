class TasksController < ApplicationController
  before
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(set_task_params)
    @task.save
  end

  def edit
    # @task = Task.find(params[:id])
  end

  # def update

  # end

  def destroy
    # @task = Task.find(params[:id])
    @task.destroy
  end

  def set_task_params
    params.require(:task).permit(:title, :detail, :completed)
  end
end
