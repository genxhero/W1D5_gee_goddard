require_relative '00_tree_node.rb'

class KnightPathFinder
  def initialize(start)
    @start = start
    @root = PolyTreeNode.new(start)
    @visited_positions = [start]
    build_move_tree
  end
  
  KNIGHT_MOVES = [[1,2],
                  [1,-2],
                  [-1,2],
                  [-1,-2],
                  [2,1],
                  [2,-1],
                  [-2,1],
                  [-2,-1]]
  
  
  def self.valid_moves(pos) #[[x][y]]
    valid_moves = []
    KNIGHT_MOVES.each do |diff|
      valid_moves << [pos[0]+diff[0],pos[1]+diff[1]]
    end
    
    valid_moves
  end
  
  def build_move_tree(destination)
    
    #find fastest path from start to destination
  end
  
  def shortest_path
    find_all_paths(destination).so
  end
  
  # def [](pos)
  #   @start[0] = pos[0]
  #   @start[1] = pos[1]
  # end
  # 
  # def []=(pos)
  # 
  # end  
  
  # node = @root if node.parent ==  nil
  # node.add_child(PolyTreeNode.new([@root.pos[0]+2, @root.pos[1]+1 ]))
  #       #array of valid L shaped moves from a givem position
  # def valid_move?(pos, move)
  #   return false if (pos[0] + move[0]) >  7 || (pos[0] + move[0]) < 0)
  #   return false if (pos[1] + move[1]) >  7 || (pos[1] + move[1]) < 0)
  #   return true
  # end
  
  
end

# def plus2_minus1
# end
# plus2_plus1
#     plus 
#     up2