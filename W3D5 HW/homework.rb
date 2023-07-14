class Stack 
    attr_reader :stack 

    def initialize(stack)
        @stack = stack 
    end 

    def push(el)
        @stack += el 
    end 

    def pop 
        self = self(0...-1)
    end 

    def peek 
        return self(-1)
    end 
end 

class Queue 

    def initialize(queue)
    @queue = queue 
    end 

    def enqueue(el)
        @queue += el 
    end 

    def dequeue 
        self = self(0...-1)
    end 


    def peek 
        return self(-1)
    end 

end     

class Map
    def initialize
        @map = []
    end

    def set(key, value)
        pair_index = @map.index { |pair| pair[0] == key }
        
        if pair_index
            @map[pair_index][1] = value
        else
            @map.push([key, value])
        end

        value
    end

    def get(key)
        @map.each { |pair| return pair[1] if pair[0] == key }
        nil
    end

    def delete(key)
        value = get(key)
        @map.reject! { |pair| pair[0] == key }
        value
    end

    def show
        deep_dup(@map)
    end

    private

    def deep_dup(arr)
        arr.map { |el| el.is_a?(Array) ? deep_dup(el) : el }
    end
end
