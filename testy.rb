require_relative "linkedlist.rb"

p "Let's do this! Let's make a list. . ."

list = LinkedList.new

p "Test to see if we can create a node. . ."

tester_node = Node.new(99)

p "See if we can append a node. . ."

list.append(1)
list.append(2)
list.append(3)

p "See if we can prepend one. . ."

#list.prepend(98)
p "Apparently not. . ."

p "The number of nodes in the list is #{list.size}."
p "The head of the list is: #{list.head.value}."
p "The tail of the list is: #{list.tail.value}."

p "The node at and index of 1 is: "
p  list.at(1)

p "If we pop the last node we get. . ."
list.pop
p list.tail.value

p "Does the list contain 66?"
p list.contains?(66)
p "How about 1?"
p list.contains?(1)

p "Add a few more nodes. . ."
list.append(36)
list.append(78)

p "Where does the list contain 36?"
p list.find_value(36)

list.to_s

