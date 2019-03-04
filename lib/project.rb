class Project
  attr_reader :backers, :title

  def initialize(title)
    @title = title
    @backers = []
  end

  def append_backer(backer)
  end

  def add_backer(backer)
    @backers << backer
    backer.back_project(self)
  end
end
