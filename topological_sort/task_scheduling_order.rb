require 'tsort'

class Scheduler
	include TSort

	def initialize
		@jobs = Hash.new{|h,k| h[k] = []}
	end

	def add(name, *dependencies)
		@jobs[name] = dependencies
	end

	def tsort_each_node(&block)
		@jobs.each_key(&block)
	end

	def tsort_each_child(name, &block)
		@jobs[name].each(&block) if @jobs.has_key?(name)
	end

	def sort
		tsort
	rescue TSort::Cyclic
		[]
	end
end

sc = Scheduler.new()
sc.add(1,0)
sc.add(2,1)
print(sc.sort)
puts ""
sc = Scheduler.new()
sc.add(1,0)
sc.add(2,1)
sc.add(0,2)
print(sc.sort)
puts ""
sc = Scheduler.new()
sc.add(5,2,0)
sc.add(4,0,1)
sc.add(2,3)
sc.add(3,1)
print(sc.sort)
puts ""