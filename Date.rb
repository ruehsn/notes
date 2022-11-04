#===============================================================================
# Time to avoid time sync drifts when OS goes to the internet to get current time
starting = Process.clock_gettime(Process::CLOCK_MONOTONIC)
# time consuming operation
ending = Process.clock_gettime(Process::CLOCK_MONOTONIC)
elapsed = ending - starting
elapsed # => 9.183449000120163 seconds

# Date format:
#===============================================================================
Date.today.strftime()
Date.today + 30  # 30 days from today

Date (Year, Month, Day):
%Y - Year with century (can be negative, 4 digits at least) 0000, 1995, 2009, 14292, etc.
%C - year / 100 (round down.  20 in 2009)
%y - year % 100 (00..99)

%m - Month of the year, zero-padded (01..12)    %_m  blank-padded ( 1..12)          %-m  no-padded (1..12)
%B - The full month name (``January'')       %^B  uppercased (``JANUARY'')
  %b - The abbreviated month name (``Jan'')    %^b  uppercased (``JAN'')

  %d - Day of the month, zero-padded (01..31)        %-d  no-padded (1..31)
  %e - Day of the month, blank-padded ( 1..31)
  %A - The full weekday name (``Sunday'')
  %a - The abbreviated name (``Sun'')
  %j - Day of the year (001..366)

  Time (Hour, Minute, Second, Subsecond):
  %H - Hour of the day, 24-hour clock, zero-padded (00..23)
  %k - Hour of the day, 24-hour clock, blank-padded ( 0..23)
  %I - Hour of the day, 12-hour clock, zero-padded (01..12)
  %l - Hour of the day, 12-hour clock, blank-padded ( 1..12)
  %P - Meridian indicator, lowercase (``am'' or ``pm'')
  %p - Meridian indicator, uppercase (``AM'' or ``PM'')
  %M - Minute of the hour (00..59)
  %S - Second of the minute (00..60)
  
  %c - date and time (%a %b %e %T %Y)
  %D - Date (%m/%d/%y)
  %F - The ISO 8601 date format (%Y-%m-%d)
  

  #bigDecimal - can not have and characters besides . and numbers!!!
  puts BigDecimal.new('36,987.95').to_s('F') #36.0
puts BigDecimal.new('987.95').to_s('F')    #987.95
