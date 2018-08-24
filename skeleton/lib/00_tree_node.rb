require 'byebug'
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
  
  def add_child(child_node)
    self.children << child_node
    child_node.parent = self
  end 
  
  def remove_child(child_node)
    raise "<<NOT A CHILD>>" if self.children.include?(child_node) == false
    self.children.delete(child_node)
    child_node.parent = nil
  end
  
  def dfs(target_value)
    debugger
    return self if @value == target_value
    @children.each do |child|
      result = child.dfs(target_value)
      return result unless result.nil?
    end
    nil
  end
  
  def inspect
    "OBJECTID: #{object_id} VALUE: #{value} CHILDREN: #{children}"
  end
end