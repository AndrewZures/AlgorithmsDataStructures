class LinkedList

  class Node
    attr_accessor :value, :next_node

    def initialize(value, next_node = nil)
      @value = value
      @next_node = next_node
    end
  end

  attr_accessor :head

  def append(value)
    if @head.nil?
      @head = Node.new(value)
    else
      node = @head
      while !node.next_node.nil? do
        node = node.next_node
      end
    node.next_node = Node.new(value)
    end
  end

  def get(index)
    node = move_to(index)
    node.nil? ? nil : node.value
  end

  def prepend(value)
     @head = Node.new(value, @head)
  end

  def remove_at(index)
    node = move_to(index-1)
    next_next_node = move_to(index+1)

    if !node.nil? && !next_next_node.nil?
      node.next_node = next_next_node
    elsif !node.nil?
      node.next_node = nil
    else
      raise 'Out Of Bounds'
    end

  end

  def insert_before(index, value)
    if index == 0
      prepend(value)
    else
      node = move_to(index-1)

      if node.nil? || node.next_node.nil?
        raise 'Out Of Bounds'
      else
        node.next_node = Node.new(value,node.next_node)
      end
    end
  end

  private

  def move_to(index)
      temp = @head
      index.times { temp.nil? ? break : temp = temp.next_node }
    temp
  end

end
