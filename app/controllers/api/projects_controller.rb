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

        if @project.save 
            render :show 
        else 
            render json: @project.errors.as_json(full_messages: true), status: 422
        end
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
            :photo, :funding_goal, :category_id, :user_id
        )
    end

end
