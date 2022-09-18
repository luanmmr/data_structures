class Queue
  attr_reader :queue

  def initialize
    @queue = []
  end

  def enqueue(value)
    queue.push(value)
  end

  def dequeue
    queue.delete_at(0)
  end
end

