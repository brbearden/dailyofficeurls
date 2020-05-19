#! /usr/bin/env ruby
# https://prayer.forwardmovement.org/daily_prayer.php?d=24&m=5&y=2020&office=MP
base_url = "https://prayer.forwardmovement.org/daily_prayer.php"
sec_day = (60 * 60 * 24)

# First, get the next Sunday
start = Time.new
until start.sunday?
  start = start + sec_day
end

# Build a week's worth of URLs
7.times do |i|
  day = start + (i*sec_day)
  # Build the query string
  query_date = "?d=" + day.day.to_s + "&m=" + day.month.to_s + "&y=" + day.year.to_s
  mp_query   = base_url + query_date + "&office=MP"
  ep_query   = base_url + query_date + "&office=EP"

  puts mp_query
  puts ep_query
end