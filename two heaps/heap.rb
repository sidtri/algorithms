require 'ostruct'
class Heap
	attr_accessor :numbers, :maxHeap, :style
	def initialize(style='max')
		@numbers = []
		@maxHeap = maxHeap
		@style = style
	end

	def head
		numbers.first
	end

	def leaf
		numbers[-1]
	end

	def add(n)
		numbers.push(n)
		heap()
	end

	def count
		numbers.count
	end

	def pop
		numbers.pop
	end

	private

	def heap
		((numbers.count/2) - 1).downto(0).each do |idx|
			heapify(idx)
		end
	end

	def heapify(idx)
		currentNode = OpenStruct.new(val: numbers[idx], idx: idx)
		left = 2 * idx + 1
		right = left + 1

		if style == "max"
			if numbers[left] && currentNode.val < numbers[left]
				currentNode = OpenStruct.new(val: numbers[left], idx: left)
			end

			if numbers[right] && currentNode.val < numbers[right]
				currentNode = OpenStruct.new(val: numbers[right], idx: right)
			end
		else
			if numbers[left] && currentNode.val > numbers[left]
				currentNode = OpenStruct.new(val: numbers[left], idx: left)
			end

			if numbers[right] && currentNode.val > numbers[right]
				currentNode = OpenStruct.new(val: numbers[right], idx: right)
			end
		end

		if idx != currentNode.idx
			# swap
			temp = numbers[idx]
			numbers[idx] = currentNode.val
			numbers[currentNode.idx] = temp

			idx = currentNode.idx
			heapify(idx)
		end
	end
end