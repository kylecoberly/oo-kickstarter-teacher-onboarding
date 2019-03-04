class Project
  attr_reader :backers
  def initialize(title)
    @title = title
    @backers = []
  end
end
