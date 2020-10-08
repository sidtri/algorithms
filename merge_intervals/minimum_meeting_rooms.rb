require 'pry'
def minimum_meeting_rooms(meetings)
	start, ender = 0, 1

	meetings.sort_by! {|a| a[start] }
	min_rooms = 0
	rooms = []

	meetings.each do |meeting|
		while rooms > 
		rooms << meeting
	end


	rooms
end

print minimum_meeting_rooms([[1,4], [2,5], [7,9]])
puts ""
print minimum_meeting_rooms([[6,7], [2,4], [8,12]])

# [2,4], [6,7], [8,12]