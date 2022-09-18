class Stack
  attr_reader :stack

  def initialize
    @stack = []
  end

  def stack_up(value)
    stack.push(value)
  end

  def unstack
    stack.pop
  end
end

