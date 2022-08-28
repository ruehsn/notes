#===============================================================================
#String
#===============================================================================
"zz".next    # "aaa"
'abc'.start_with?('a')   #true
'abc'.include?('b')      #

#special characters:
26.chr  #sub char
.ord  #get the char number

#RegEx
#===============================================================================
string = "RyanOnRails: This is a test"
one, two, three = string.match(/(^.*)(:)(.*)/i).captures

p one   #=> "RyanOnRails"
p two   #=> ":"
p three #=> " This is a test"
  
'hello'.match(/(.)\1/)[0]   #=> "ll"  

#regex contains in string
"abc"      !~ /[0-9]/ #true "Not match" operator
"4oranges" =~ /[0-9]/ # 0 returns index of first match, nil if no match


#===============================================================================
# Symbols 
#===============================================================================
:flag_a
"some_String".to_sym #:some_string


#===============================================================================
#Debug:
#===============================================================================
rdebug-ide run_parse.rb

require 'pretty_backtrace'
PrettyBacktrace.enable
# PrettyBacktrace.multi_line = true


#pry
require 'pry'
binding.pry
step, next, finish, and continue commands and breakpoints

#===============================================================================
#Class 
#===============================================================================

class File
  attr_reader :batches, :modifer, :odfi
  
  def initialize(starting_batch_counter:1, starting_detail_counter:1)
  	self.instance_variable_set("@#{key}".to_sym, value)
  end
  
  #object equality
  def ==(other)
    self.name  == other.name &&
    self.price == other.price
  end
  
  # used for sorting
  def <=>(other)
    return -1 # self < other
    return  0 # self = other
    return  1 # self > other
  end
end

class Success
  def self.===(item)
    item.status >= 200 && item.status < 300
  end
end

class Empty
  def self.===(item)
    item.response_size == 0
  end
end


# Time to avoid time sync drifts when OS goes to the internet to get current time
starting = Process.clock_gettime(Process::CLOCK_MONOTONIC)
# time consuming operation
ending = Process.clock_gettime(Process::CLOCK_MONOTONIC)
elapsed = ending - starting
elapsed # => 9.183449000120163 seconds



#===============================================================================
#HASH
#===============================================================================
h = Hash.new("Go Fish") #go fish will be the default value if key is added without a value
h["a"] = 100

#Declare Hash on the fly:
h = { "aq" => 100, "b" => 200 }

#iterating through a hash
h.each {|key, value|  puts "#{key} => #{value}"}

# define hash with default value of 0:
h = Hash.new { |h, k| h[k] = 0 }
h['foo'] += 3 # => 3
#values_at:
hash = {bacon: 300, chocolate: 200}
p hash.values_at(:bacon, :chocolate)
# [300, 200]
#Hash Transform:
h = {bacon: 200, coconut: 300}
h.transform_values! { |v| v * 2 }
{:bacon=>400, :coconut=>600}

#Associative Arrays:
#=======================================
a = [ [ 1, "one"], [2, "two"], [3, "three"], ["ii", "two"] ]
a.rassoc("two")    #=> [2, "two"]
a.rassoc("four")   #=> nil
---
s1 = [ "colors", "red", "blue", "green" ]
s2 = [ "letters", "a", "b", "c" ]
s3 = "foo"
a  = [ s1, s2, s3 ]
a.assoc("letters")  #=> [ "letters", "a", "b", "c" ]
a.assoc("foo")      #=> nil






#===============================================================================
#excuting System Commands:
#===============================================================================
system("commandhere")
`somecommand` or %x(somecommand) # returns the output
#open Windows explore folder
`explorer #{pathstr}`

# open windows explore
`start "Bal Work Files" "#{@local_dir}"`


#command line arg
n= ARGV[0] #pull from command line input



#Text processing `
ARGF #assumes the pass parms are files
#creates a backup of the file it will be overwriting
ruby -i argf-sub.rb file.txt
 
ARGF.each do |line|
 puts line.gsub("tranquillity", "tranquility")
end

#Environment Variables
#===============================================================================
"#{ENV['userprofile']}\\My Documents\\StarSearchHistory.txt"
ENV['HOME'] + '/OneDrive - FIS/Desktop/' #C:\Users\e1034605\OneDrive - FIS\Desktop

USERDOMAIN 			
USERNAME		#(e1034605) 
SYSTEMDRIVE		(C:)
Public			(C:\Users\Public)
NUMBER_OF_PROCESSORS
COMPUTERNAME
CD

#environment:


#===============================================================================
# Misc Logic
#===============================================================================
#Select Case statement:
case variable_name
when "A", "B"
  puts ...
 when (1..10)
  puts "case statements match inclusion in a range"
 when /BAR$/
   puts "they can match regular expressions!"
  when -> (n) { n.to_s == "40" }
   puts "lambdas!"
  when Empty  #see class def below
    puts "response was empty"
  when Success #see class def below
    puts "response was a success"
  when file_name.include?('Tracker')
    return "Tracker/"
  else 
    #all other cases
  end
  
  #XOR operator
  true  ^ false  => true                  
  false ^ true   => true
  true  ^ true   => false                 
  false ^ false  => false

# setting a default value if varible is null:
x ||= value

  
  #when examining the class of the variable:
  case file
  when File, Tempfile
    file_path = file.path
  when String
    file_path = file
  else
    raise "Unknown type: #{file.class}"
  end
  
  #optional keyword parmaters with default value
  def foo(str: "default value", num: 424242)
  puts str #default value
end

foo(str: 'buz', num: 9) foo(str: 'buz', num: 9) 

#Ternary Operation
condition ? if_true : if_false
@item.rigged? ? 'Yes' : 'No'
command_type = reset_commands.include?(@command) ? 'R' : 'O'

# Pass d or e? 
method_call(a, b, a + b > c ? d : e)  
# Assign 
c or d? a = b > 10 ? c : d


#==============================================================================
# File /Driectory  stuff:
#==============================================================================

# make a directory: 
require 'fileutils'
FileUtils.mkpath(dirname)




#looping through a directory:
#-------------------------------------------
Dir.foreach(path){|item|
  next if item == '.' or item == '..'
	parse_file( path +"\\"+item)
}

Dir.foreach(path){|item|
  next if item == '.' or item == '..'
  parse_file( path +"\\"+item)
  }
  
  #specifying an extension:
  Dir.glob('C:/#Ruby/Run/Gems/*.gem'){|item|
    puts item
  }  
  
  #- reccursively
  require "pathname"
  
  def rec_path(path, file= false)
    puts path
    path.children.collect do |child|
      if file and child.file?
        child
      elsif child.directory?
        rec_path(child, file) + [child]
      end
    end.select { |x| x }.flatten(1)
  end
  
  
  
#IO
#-------------------------------------------

#writing:
  File.open("output.txt", "a") # append

File.open("output.txt", "w") do |file|
  file.puts "1 + 2 = #{1+2}"
end

# one line write to file
File.open(local_filename, 'w') {|f| f.write(string) }

#read- keep only the current line in memory
File.open("testfile") do |file|
  file.each_line {|line| puts "Got #{line.dump}" }
end
# these 2 methods are the same:
File.foreach("access_log") do |request|
  puts request
end

File.open("testfile") do |file|
  while line = file.gets
    puts line
  end
end

#Read file into an array of string:
File.readlines("filename")

#Reads just the first line:
puts File.open('somefile.txt', &:readline)
	
#read file into string:
contents = File.open('path-to-file.tar.gz', 'rb') { |f| f.read }
contents = IO.read(@document.path)

#temp File
file = Tempfile.new('foo')
file.write("hello world")
file.close
file.unlink    # deletes the temp file

#CSV
require "csv"
#twin Bank  Company Name
#A    123   Flower Shop
CSV.foreach(file, col_sep: "\t", :headers => true, :header_converters => :symbol) do |row|
  puts row.field(:bank)
  puts row.field(:company_name)
end 

#looping through directory:
Dir.foreach(dir){|file|
  next if file == '.' or file == '..'
  
}




#multi line quote
#===============================================================================
puts <<GROCERY_LIST
Grocery list
----
1. Salad mix.
2. Strawberries.*
3. Cereal.
4. Milk.*

* Organic
GROCERY_LIST

#determining object class type:
object.kind_of?(Array)
object.class



#getting input from standard - in 
#===============================================================================
def prompt(*args)
  print(*args)
  gets.chomp.chomp
end

def 
  
  def pass(*args)
    print(*args)
    STDIN.noecho(&:gets).chomp
  end

#===============================================================================
# ERROR handling
#===============================================================================
#specific Block of code test 
begin
  # ...
rescue IOError, SystemCallError, Net::FTPError
   # ...
rescue => e
    # ... same as: same as: rescue StandardError => e; recover highest level of errors your want to generalize.
   puts e  # just the error message
   puts e.backtrace 
  else
    # run if no exceptions
  ensure
    #  always run (exceptions or no exceptions)
  end
  
#error handle on whole method:
def my_method
    ...
  rescue
    ...
  else
    ...
  ensure
    ...
end

#using retry
counter = 0
begin
  counter += 1
  make_api_request
rescue
  retry if counter <= 3
end

#re-raising the exceptions; call 'raise' with no arguements- raise the current exception
begin
  ...
rescue => e
  raise if e.message == "Fubar"
end


raise "error message"  #raises a RuntimeError

#creating a custom error message
#===============================================================================
class PepError < StandardError
  attr_reader :pep_error_code
  
  def initialize(pep_error_code, msg)
    puts "error!!! #{pep_error_code}"
    @pep_error_code=pep_error_code
    super(msg)
  end
end

#raising that custom error:
raise PepError.new(pep_rc, error)  

Exception
 NoMemoryError
 ScriptError
 LoadError
 NotImplementedError
 SyntaxError
 SecurityError
 SignalException    <control-C to kill program >
 Interrupt
 SystemExit         <exit command in ruby>
 SystemStackError
 --------------------------------
 StandardError -- default for rescue
 ArgumentError
   UncaughtThrowError
  EncodingError
  FiberError
  IOError
   EOFError
   IndexError
   KeyError
   StopIteration
   LocalJumpError
   NameError
   NoMethodError
  RangeError
   FloatDomainError
  RegexpError
  RuntimeError -- default for raise
  SystemCallError
   Errno::*
   ThreadError
  TypeError
  ZeroDivisionError
  
  
  



#File System 
#----------------------  
File.rename(old_file, new_file)

file = "/path/to/xyz.mp4"

comp = File.basename file        # => "xyz.mp4"
extn = File.extname  file        # => ".mp4"
name = File.basename file, extn  # => "xyz"
path = File.dirname  file        # => "/path/to"


#rename a file 


  
#Unit Testing
#===============================================================================
require 'minitest/autorun'
assert_equal( @a.normalize_bank('136') , '136')


#run a single test
#-------------------
ruby test_program.rb -n test_the_truth


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
 
 #=========================
 require 'benchmark'
 puts Benchmark.measure { "a"*1_000_000_000 }
 #0.350000   0.400000   0.750000 (  0.835234)
 #==================================================================== 
 
 #quickly read some sample data as a Proof of Concept before building it out: 
 DATA.each_line do |line|
  puts line
end

__END__
Doom
Quake
Diablo




#===============================================================================
# Date format:
#===============================================================================
Date.today.strftime()

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


#===============================================================================
#=========================
require 'erb'

time = Time.now
renderer = ERB.new(DATA.read)
puts renderer.result()

# __END__
The current time is <%= time %>.