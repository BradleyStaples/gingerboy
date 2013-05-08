class ProjectsController < ApplicationController

  layout "projects"

  def index
    slug = params[:slug].to_s
    @project = Project.find_by_slug(slug)
    @manifest = "project-#{slug}"
  end

end
