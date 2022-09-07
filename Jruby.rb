#Jruby
#==========================================
static methods are not avialable to JRuby
<class>.public_instance_methods  #displays all the available methods
com.fnfis.achm.batch_common.ReadPropertiesFile.public_instance_methods

#error handling 
 begin 
  #some error
rescue java.io.FileNotFoundException => e
  puts "java error #{e.message}"
  puts e.inspect
  puts e.backtrace  #full stack trace
  send_email_failure(e)
ensure
  #this code excutes
end 	

begin
  raise java.lang.IllegalArgumentException.new("Bad param")
rescue java.lang.IllegalArgumentException => e
  puts "Illegal argument: #{e}"
end 
 