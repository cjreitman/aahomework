class Stack

    def initialize
        @array = []
    end

    def push(el)
        @array.push(el)
    end

    def pop
        @array.pop
      
    end

    def peek
        puts @array.last
      
    end
end

class Queue

    def initialize
        @array = []
    end

    def enqueue(el)
        @array.unshift(el)

    end

    def dequeue
        @array.pop

    end

    def peek
        @array.last

    end

end

class Map

    def initialize

    end

    def set(key, value)

    end

    def get(key)

    end

    def delete(key)

    end

    def show

    end



end