class Node
    attr_accessor :next, :data
    def initialize(data,next)
        @data = data
        @next = nil
    end
end