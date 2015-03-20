class ProjectTemplatesController < ApplicationController
  def choose_project
    @projects = ProjectTemplate.all
  end
end
