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

    def pop
        if @head.nil?
            return
        else
            current = @head
            prev = nil

            if current.next_node.nil?
                @head = nil
                return current.value
            end

            while current.next_node
                prev = current
                current = current.next_node
            end
            prev.next_node = nil;
            return current.value
        end
    end

    def contains?(value)
        if @head.nil?
            return false
        end

        current = @head
        while current
            if value == current.value
                return true
            end
            current = current.next_node
        end
        return false
    end

    def find(value)
        if @head.nil?
            return nil
        end

        index = 0

        current = @head
        while current
            if value == current.value
                return index
            end
            current = current.next_node
            index += 1
        end
        return nil
    end

    def to_s
        current = @head
        values = []
        while current
          values << current.value
          current = current.next_node
        end
        values << nil
        puts values.join(' -> ')
      end

end

a = LinkedList.new
a.append('first')
a.append('second')
a.append('third')
puts a.find('third')
# puts a.contains?('third')
# a.prepend("zero")
# puts a.pop
a.to_s