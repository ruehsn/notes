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

#arguement Error:
raise ArgumentError.new(
  "Expected a value of 1-#{CREATURES.size}, got #{n}"
) if CREATURES.size < n

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