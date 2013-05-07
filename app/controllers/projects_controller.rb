class ProjectsController < ApplicationController
  def index
    @project = Project.find_by_slug(params[:slug].to_s)
  end
end
