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
      new_node = Node.new(value)
      node.next_node = new_node
      @last_node = new_node
    end
  end

  def first_node
    get(0)
  end

  def last_node
    @last_node ? @last_node : nil
  end

  def get(index)
    node = node_at(index)
    node.nil? ? nil : node.value
  end

  def prepend(value)
     @head = Node.new(value, @head)
  end

  def remove_at(index)
    node = node_at(index-1)
    next_next_node = node_at(index+1)

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
      node = node_at(index-1)

      if node.nil? || node.next_node.nil?
        raise 'Out Of Bounds'
      else
        node.next_node = Node.new(value,node.next_node)
      end
    end
  end

  private

  def node_at(index)
      temp = @head
      index.times { temp.nil? ? break : temp = temp.next_node }
    temp
  end

end
