# Implement a list that sorts itself
# when inserting a new element

require_relative '../../in_class/lib/linked_list'

class SortedLinkedList < LinkedList
  def insert(value)
    node = @head
    index = 0

    while node != nil && node.value < value
      node = node.next_node
      index += 1
    end

    insert_before(index, value)
  end

end
