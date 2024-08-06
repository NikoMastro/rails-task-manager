class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def show
  @tasks = Task.find(params[:title])
  end

  def new
  @task = Task.new
  end

  def create
    @task = task.new(task_params)
    if @task.save
      redirect_to task_path(@task)
    else
      render 'new', status: :unprocessable_entity
    end
  end

  def edit
    @task= task.find(params[:id])
  end

  def update
    @task= task.find(params[:id])
    if @task.update(task_params)
      redirect_to task_path(@task)
    else
      render 'edit', status: :unprocessable_entity
    end
  end

  def destroy
    @task= task.find(params[:id])
    @task.destroy
    redirect_to tasks_path, status: :see_other
  end
  private
  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end
end
