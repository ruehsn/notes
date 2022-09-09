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