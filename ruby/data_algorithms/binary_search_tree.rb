class Node
	attr_reader :value
	attr_accessor :right_child, :left_child

	def initialize(value = nil)
		@value = value
	end

	def link(new_node)
		if new_node < @value
			left_child.nil? ? self.left_child = Node.new(new_node) : left_child.link(new_node)
		else
			right_child.nil? ? self.right_child = Node.new(new_node) : right_child.link(new_node)
		end
	end

	def build_tree(values)
		start_time = Time.now
		values = values.uniq.shuffle
		root = Node.new(values.shift)
		values.each {|value| root.link(value) }
		puts "\nBuilt Tree in #{(Time.now - start_time) * 1000} ns"
		root
	end

	def breadth_first_search(target, tree_node)
		start_time = Time.now
		queue = [tree_node]
		puts "\nBreadth searching for: #{target} in the tree..."
		until queue.empty?
			return "Found: #{queue.first.value} at Node: #{queue.first} in #{(Time.now - start_time) * 1000000} ns" if queue.first.value == target
			queue << queue.first.left_child unless queue.first.left_child.nil?
			queue << queue.first.right_child unless queue.first.right_child.nil?
			queue.shift
		end
	end

	def depth_first_search(target, tree_node)
		start_time = Time.now
		stack = [tree_node]
		checked = [tree_node]
		puts "\nDepth searching for: #{target} in the tree..."
		until stack.empty?
			return "Found: #{stack.last.value} at Node: #{stack.last} in #{(Time.now - start_time) * 1000000} ns" if stack.last.value == target
			if stack.last.left_child && !checked.include?(stack.last.left_child)
				stack << stack.last.left_child
				checked << stack.last
			elsif stack.last.right_child && !checked.include?(stack.last.right_child)
				stack << stack.last.right_child
				checked << stack.last
			else
				stack.pop
			end
		end
	end

	def dfs_rec(target, tree_node)
		return "Found: #{tree_node.value} at Node: #{tree_node}" if tree_node.value == target

		left_search = dfs_rec(target, tree_node.left_child) unless tree_node.left_child.nil?
		return left_search unless left_search.nil?
		rigth_search = dfs_rec(target, tree_node.right_child) unless tree_node.right_child.nil?
		return rigth_search unless rigth_search.nil?
	end
end

node = Node.new
tree = node.build_tree([1, 7, 4, 23, 8, 9, 4, 3, 5, 7, 9, 67, 6345, 324])
puts node.breadth_first_search(3, tree)
puts node.breadth_first_search(7, tree)
puts node.breadth_first_search(67, tree)
puts node.depth_first_search(3, tree)
puts node.depth_first_search(7, tree)
puts node.depth_first_search(67, tree)
puts ""
puts node.dfs_rec(3, tree)
puts node.dfs_rec(7, tree)
puts node.dfs_rec(67, tree)