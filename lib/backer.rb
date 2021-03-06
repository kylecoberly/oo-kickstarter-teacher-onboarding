class Backer
  attr_reader :backed_projects, :name

  def initialize(name)
    @backed_projects = []
    @name = name
  end

  def append_project(project)
    @backed_projects << project
  end

  def back_project(project)
    append_project(project)
    project.append_backer(self)
  end
end
