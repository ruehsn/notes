#Command Line Interface - aka working with CMD

ARGV[0] # array of arguments passed in aka script.rb A B => ARGV= ['A', 'B']

# Standard-In- no gems:
gets.chomp
# Standard-In Delete
STDIN.noecho(&:gets).chomp


require "tty-prompt"  #https://github.com/piotrmurach/tty-prompt
@prompt = TTY::Prompt.new
email     = @prompt.ask("Please enter the email address?", required: true).strip
email     = @prompt.ask("Please enter the email address?", default: "abc@gmail.com").strip

choices = %w(A C S)
@prompt.select("Which option?", choices)
long_list = @prompt.select("Please enter the point the file should load to:", choices, cycle: true, per_page: 20)


#launching Shell commands:
#____________________________________________________
system("ls") #print results waits for command to complete
#returns:
# true if the command worked
# false if the command returns an error code
# nil if command execution fails (command not found)
# $? = give exit code of last command excuted


`ls`
%x|ls|
#return the string of the output, wait for the command to complete


#open in seperate process without having to use threads
require 'open3'

Open3.popen3("curl http://example.com") do |stdin, stdout, stderr, thread|
   pid = thread.pid
   puts stdout.read.chomp
end


