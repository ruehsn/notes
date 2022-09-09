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
  
#when examining the class of the variable:
case file
  when File, Tempfile
    file_path = file.path
  when String
    file_path = file
  else
    raise "Unknown type: #{file.class}"
end

#XOR operator
true  ^ false  => true                  
false ^ true   => true
true  ^ true   => false                 
false ^ false  => false

#Ternary Operation
condition ? if_true : if_false
@item.rigged? ? 'Yes' : 'No'
command_type = reset_commands.include?(@command) ? 'R' : 'O'

# setting a default value if variable is null:
x ||= value

# execute this code conditionally when we have a constant called `Rails`
if defined?(Rails)
  # ...
end