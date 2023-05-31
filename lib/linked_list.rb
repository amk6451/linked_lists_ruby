require_relative "node"

class LinkedList
    def initialize
        @head = nil
    end

    def append(value)
        new_node = Node.new(value)
        if @head.nil?
            @head = new_node
        else
            current = @head
            while current.next_node
              current = current.next_node
            end
            current.next_node = new_node
          end
    end



    def prepend(value)
        new_node = Node.new(value)
        if @head.nil?
            @head = new_node
        else
            current = @head
            @head = new_node
            @head.next_node = current
        end
    end

    def display
        current = @head
        values = []
        while current
          values << current.value
          current = current.next_node
        end
        puts values.join(' -> ')
      end
end

a = LinkedList.new
a.append('first')
a.append('second')
a.append('third')
a.prepend("zero")
a.display