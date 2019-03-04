class Project
  attr_reader :backers, :title

  def initialize(title)
    @title = title
    @backers = []
  end

  def append_backer(backer)
    @backers << backer
  end

  def add_backer(backer)
    append_backer(backer)
    backer.append_project(self)
  end
end
