class HomeController < ApplicationController
  def index
  end

  def projects
    @projects = Project.all
  end

  def portfolio
    @sites = Portfolio.all
  end

  def resume
  end

  def contact
  end

end
