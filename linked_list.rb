class LinkedList
  attr_accessor :head

  def initialize
    self.head = nil
  end

  def add(value)
    if head.nil?
      self.head = Node.new(value: value, nextNode: nil)
    else
      lastNode = head
      until lastNode.nextNode.nil?
        lastNode = lastNode.nextNode
      end

      lastNode.nextNode = Node.new(value: value, nextNode: nil)
    end
  end

  def insert_at_head(value)
    self.head = Node.new(value: value, nextNode: head)
  end

  def delete(value)
    return false if !head || head.nextNode.nil?

    current = head.nextNode
    previous = head

    until current.nil?
      if current.value == value
        previous.nextNode = current.nextNode

        return true
      end

      previous = current
      current = current.nextNode
    end

    false
  end

  def delete_at_head
    return false if head.nil?
    self.head = head.nextNode

    true
  end

  def search(value)
    node = head
    until node.nil?
      return node if node.value == value
      node = node.nextNode
    end

    false
  end

  private

  class Node
    attr_accessor :value, :nextNode

    def initialize(value:, nextNode:)
      self.value = value
      self.nextNode = nextNode
    end
  end
end

