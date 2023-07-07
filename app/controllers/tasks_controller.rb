class TasksController < ApplicationController

  def index
    @thems = 0
    @tasks = Task.all
    @task = Task.new

  end

  def show
    @task = Task.find(params[:id])
    @points_finished = @task.points.where(finished: true)
    @points_no_finished = @task.points.where(finished: false)
  end

  def new
      @task = Task.new
      @new = 1


  end

  def create
    @task = Task.new(article_params)
    if @task.save
        redirect_to tasks_path
    else 
      render :new , status: :unprocessable_entity
    end

  end

  def edit
    @task = Task.find(params[:id])   

  end

  def update
    @task = Task.find(params[:id])

    if @task.update(article_params)
      redirect_to tasks_path
    else 
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy

    redirect_to tasks_path, status: :see_other

  end

  private
    def article_params
      params.require(:task).permit(:title, :body, :complit_procent)
    end

end
