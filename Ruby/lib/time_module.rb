module ManipulationTime

	# seconds of one day
	def day_second
		24*60*60
	end

	# format day
	def formatted day
		day.strftime("%Y-%m-%d")
	end

	# return list string day in current week
	def day_in_week_str
		days = []
		today = Time.now
		days.push(formatted(today))
		today_week_day = today.wday
		anothers = (0..6).select {|e| e != today_week_day}
		anothers.map do |e|
			days.push(formatted(Time.at(today.to_i - e*day_second)))
		end

		days.sort
	end
	# return list int day in current week
	def day_in_week_int 
		days = []
		today = Time.now
		days.push(today.to_i)
		today_week_day = today.wday
		anothers = (0..6).select {|e| e != today_week_day}
		anothers.map do |e|
			days.push(today.to_i - e*day_second)
		end

		days.sort
	end
end