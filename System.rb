#excuting System Commands:
#===============================================================================
system("commandhere")
`somecommand` or %x(somecommand) # returns the output
#open Windows explore folder
`explorer #{pathstr}`

# open windows explore
`start "Bal Work Files" "#{@local_dir}"`


#command line arg
#===============================================================================
n= ARGV[0] #pull from command line input

# Standard-In
gets.chomp.chomp
# Standard-In Delete
STDIN.noecho(&:gets).chomp


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