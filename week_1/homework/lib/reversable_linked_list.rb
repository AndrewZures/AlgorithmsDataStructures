# Implement the reverse function
# for a linked list

require_relative '../../in_class/lib/linked_list'

class ReversableLinkedList < LinkedList
  def reverse
    node = @head
    reverse_list = LinkedList.new

    while !node.nil? do
      reverse_list.prepend(node.value)
      node = node.next_node
    end

    @head = reverse_list.head
  end
end
