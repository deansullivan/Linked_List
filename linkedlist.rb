class LinkedList
    
    attr_accessor :head, :tail, :size

    def initialize
        @size = 0 # Size of the list
        @head = Node.new(0)
        @tail = @head
        @size += 1
    end

    def append(value) # Add a node to the end of the list

        new_node = Node.new(value)
        @tail.next_node = new_node
        @tail = new_node
        @size += 1

    end

    def prepend(value) # Add a node to the beginning of the list
        new_node = Node.new(value, @head)
        @head.next_node = new_node
        @head = new_node
        @size += 1
    end

    def at(index) # Returning the node at a given index
        @@returned_node = @head
        index.times do
            @@returned_node = @@returned_node.next_node
        end

        return @@returned_node.value
    end

    def pop # Remove the last element of the array

        @@pop = @size - 2
        @@returned_node = @head
        @@pop.times do
            @@returned_node = @@returned_node.next_node
        end
        @@returned_node.next_node = nil
        @tail = @@returned_node
        @size -= 1
    end

    def contains?(value) # Checks to see if the past value is contained in the list as a value
        @@returned_node = @head
        @@value_exists = false
        @size.times do
            @@value_exists = true if @@returned_node.value == value
            @@returned_node = @@returned_node.next_node
        end
            
        return @@value_exists
    end

    def find_value(value) # Returns the index of the value thats passed
        @@value = value
        @@value_location = 0 # Could change to array if wanted to track multiple locations
        @@index = nil
        @@returned_node = @head

        @size.times do
            if @@returned_node.value == @@value
                @@index = @@value_location 
            else
                @@value_location += 1
                @@returned_node = @@returned_node.next_node
            end
        end

        return @@index
    end

    def to_s # Return the list in a string format!
        @@node = @head

        until @@node.next_node.nil?
            p "( #{@@node.value} ) -> "
            @@node = @@node.next_node
        end

        p "( #{@@node.value} ) -> nil\n"


    end

end

class Node

    attr_accessor :next_node, :value

    def initialize(value = nil, next_node = nil)
        @value = value
        @next_node = next_node
    end

end