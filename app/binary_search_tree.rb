class BinarySearchTree
  def initialize
    @root = nil
  end

  def insert(score, title)
    movie_info = { score: score, title: title }
    @root = Node.new(movie_info) if @root.nil?

    @root.insert(movie_info)
  end
end
