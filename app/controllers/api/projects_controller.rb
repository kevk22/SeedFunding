class Api::ProjectsController < ApplicationController
    def index 
        @projects = Project.all
        render :index
    end

    def show 
        @project = Project.find(params[:id])
        render :show
    end

    def create 
        @project = Project.new(project_params)
        
    end

    def update 
        @project = Project.find(params[:id])
    end

    def destroy 
        @project = Project.find(params[:id])
        @project.destroy!
    end

    private 
    def project_params 
        params.require(:project).permit(
            :name, :description, :body, :funding_expiration, 
            :image, :funding_goal, :category_id, :user_id
        )
    end

end
