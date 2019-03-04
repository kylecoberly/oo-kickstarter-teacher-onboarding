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
    self.append_project(project)
    project.add_backer(self)
  end
end
