require_relative "node"

class LinkedList
    def initialize
        @head = nil
        @tail = nil
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
        @tail = new_node
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

    def size
        count = 0
        if @head.nil?
            return count
        else
            current = @head
            while current
                count += 1
                current = current.next_node
            end
            puts count
        end
    end

    def head
        puts @head
    end

    def tail
        puts @tail
    end


    def at(index)
        
        count = 1
        current = @head
        while current
            if index == count
                break
            end
            count += 1
            current = current.next_node
        end
        puts current.value
    end


end

a = LinkedList.new
a.append('first')
a.append('second')
a.append('third')
a.prepend("zero")
# a.size
# a.tail
a.at(3)
a.display