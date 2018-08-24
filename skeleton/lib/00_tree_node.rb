class PolyTreeNode
  def initialize(value)
    @children = []
    @value = value
    @parent = nil
  end
  
  def parent
    @parent    
  end
  
  def children
    @children
  end
  
  def value
    @value
  end
  
  def parent=(new_parent)
    current_parent = @parent
    if current_parent
      current_parent.children.delete(self)
    end
    @parent = new_parent
    new_parent.children << self unless new_parent.nil? || new_parent.children.include?(self)
  end
  
  def inspect
    "OBJECTID: #{object_id} VALUE: #{value} CHILDREN: #{children}"
  end
end