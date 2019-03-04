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
    self.append_backer(backer)
    backer.back_project(self)
  end
end
