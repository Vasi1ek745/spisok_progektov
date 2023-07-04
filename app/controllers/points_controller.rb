class PointsController < ApplicationController
  def create
    @task = Task.find(params[:task_id])
    @point = @task.points.create(point_params)
    redirect_to task_path(@task)
  end
  def destroy
    @task = Task.find(params[:task_id])
    @point = Point.find(params[:id])
    @point.destroy

    redirect_to task_points_path(@task)
  end
  def index
    @task = Task.find(params[:task_id])
    @points_finished = @task.points.where(finished: true)
    @points_no_finished = @task.points.where(finished: false)  
  end
  
  def edit
    @task = Task.find(params[:task_id])
    @point = Point.find(params[:id]) 

  end

  def update
    @task = Task.find(params[:task_id])
    @point = Point.find(params[:id]) 

    if @point.update(point_params)
      redirect_to task_path(@task)
    else 
      render :edit, status: :unprocessable_entity
    end
  end

  private
    def point_params
      params.require(:point).permit(:title, :finished)
    end
end
