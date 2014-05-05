# Use a linked list to implement
# a Stack.

require_relative '../../in_class/lib/linked_list'

class MyStack
  def initialize
    @linked_list = LinkedList.new
  end

  def push(element)
    @linked_list.prepend(element)
  end

  def pop
    val = @linked_list.get(0)
    @linked_list.head = @linked_list.head.next_node if !@linked_list.head.nil?
    val
  end

  private
  attr_accessor :linked_list
end
