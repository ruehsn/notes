#loops:
while condition
	some_method
end

begin
  code
end while some_flag_is_true

until some_flag_is_false do
  code
end


5.times do 
  send_sms_to('xxx') 
end

for i in 0..5
  puts "Value of local variable is #{i}"
end

(0..5).each do |i|
  puts "Value of local variable is #{i}"
end

next - skips the rest of steps, begins next loop
redo - Restarts this iteration of the most internal loop
retry- iterator is re-evaluated.

#using retry
counter = 0
begin
  counter += 1
  make_api_request
rescue
  retry if counter <= 3
end

