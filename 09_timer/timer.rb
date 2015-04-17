class Timer
	attr_accessor :seconds

	def initialize
		@seconds = 0
	end


	def time_string

		# Create time object and add seconds
		time = Time.new(0) + @seconds

		# Convert to hours:minutes:seconds
		hour = padded(time.hour)
		minute = padded(time.min)
		second = padded(time.sec)

		"#{hour}:#{minute}:#{second}"
	end

	# Leading zero padding for single digit numbers
	def padded(time)
		return time.to_s.prepend('0') unless time > 9
		time.to_s
	end



end