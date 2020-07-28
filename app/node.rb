class Node

  def initialize(movie_info)
    @score = movie_info[:score]
    @title = movie_info[:title]
    @left_node = nil
    @right_node = nil
  end

  def insert(movie_info)
    if movie_info[:score] <= @score
      @left_node = Node.new(movie_info) if @left_node.nil?
      @left_node.insert(movie_info) if !@left_node.nil?
    elsif movie_info[:score] > @score
      @right_node = Node.new(movie_info) if @right_node.nil?
      @right_node.insert(movie_info) if !@right_node.nil?
    end
  end
end
