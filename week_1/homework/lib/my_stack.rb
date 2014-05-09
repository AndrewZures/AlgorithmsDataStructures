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
    popped_node = @linked_list.first_node if @linked_list.first_node
    @linked_list.head = @linked_list.head.next_node if !@linked_list.head.nil?
    popped_node
  end

  private
  attr_accessor :linked_list

  def reset_head
    @linked_list.head = @linked_list.head.next_node if !@linked_list.head.nil?
  end
end
