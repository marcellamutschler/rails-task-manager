class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :complete, :destroy]

  def index
    @task = Task.all
  end

  def show
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to task_path(@task)
    else
      redirect_to new_task_path
    end
  end

  def edit
  end

  def update
    @task.update(task_params)
    redirect_to task_path(@task)
  end

  def complete
    @task.update(completed: !(@task.completed))
    redirect_to :back
  end

  def destroy
    @task.destroy
    redirect_to root_path
  end

  private

  def task_params
    params.require(:task).permit(:title, :description, :deadline)
  end

  def set_task
    @task = Task.find(params[:id])
  end
end
