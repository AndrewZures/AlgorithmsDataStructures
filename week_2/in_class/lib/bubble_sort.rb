class BubbleSort
  attr_accessor :list

  def initialize(list)
    self.list = list
    @loop_index = list.length - 1
    @movement_index = 0
  end

  def tick

    if @movement_index == @loop_index
        @movement_index = 0
        @loop_index -= 1
    end

    el = list[@movement_index]
    next_el = list[@movement_index+1]

    if next_el
      list[@movement_index] = next_el
      list[@movement_index+1] = el
    end

    @movement_index += 1
  end

  private

  attr_accessor :loop_index, :movement_index
end
