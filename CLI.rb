#Command Line Interface - aka working with CMD

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

