require 'pry'
require 'tsort'

class TopoSort
	include TSort

	attr_accessor :requirements

	def initialize
		@requirements = Hash.new{|h, k | h[k] = []} 
	end

	def add(name, *dependencies)
		@requirements[name] = dependencies
	end

	def tsort_each_node(&block)
		@requirements.each_key(&block)
	end

	def tsort_each_child(name, &block)
		@requirements[name].each(&block) if @requirements.has_key?(name)
	end
end


ts = TopoSort.new()
ts.add(3,2,0)
ts.add(2,0,1)
print(ts.tsort)