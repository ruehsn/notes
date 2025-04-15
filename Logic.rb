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

#case return statment
	def load_lib_conv(dsn)
		return case dsn
			when /\w+\.\w+\.LOAD/     then dsn[0,2].to_sym
			when /SYS1\.S\w+/         then :SY
			when 'OPN.OPER.DUMMYLOD'  then nil
			else dsn
		end
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

#compact Case statement
case balance
  when (   0...1000) then 0.5
  when (1000...5000) then 1.621
  when (5000...)     then 2.475
end

# setting own conditions
case
  when speed > 60
    puts "too fast!"
  #...
end

#setting value in case statement
author = case title
         when "War and Peace"    then 'Tolsoy'
         when "Romeo and Juliet" then 'Shakespeare'
         else "Don't Know"
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
