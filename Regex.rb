string = "RyanOnRails: This is a test"
one, two, three = string.match(/(^.*)(:)(.*)/i).captures

p one   #=> "RyanOnRails"
p two   #=> ":"
p three #=> " This is a test"

'hello'.match(/(.)\1/)[0]   #=> "ll"

#regex contains in string
"abc"      !~ /[0-9]/ #true "Not match" operator
"4oranges" =~ /[0-9]/ # 0 returns index of first match, nil if no match

#named captures:
m = /\[(?<log_level>[A-Z]+)\]:\s*(?<message>[\w| ]+\b)/.match(line)
@log_level = m[:log_level].downcase
@message   = m[:message]

# https://rubular.com/
# Regex quick reference

# [abc]	A single character of: a, b, or c
# [^abc]	Any single character except: a, b, or c
# [a-z]	Any single character in the range a-z
# [a-zA-Z]	Any single character in the range a-z or A-Z
# ^	Start of line
# $	End of line
# \A	Start of string
# \z	End of string

# .	Any single character
# \s	Any whitespace character
# \S	Any non-whitespace character
# \d	Any digit
# \D	Any non-digit
# \w	Any word character (letter, number, underscore)
# \W	Any non-word character
# \b	Any word boundary

# (...)	Capture everything enclosed
# (a|b)	a or b
# a?	Zero or one of a
# a*	Zero or more of a
# a+	One or more of a
# a{3}	Exactly 3 of a
# a{3,}	3 or more of a
# a{3,6}	Between 3 and 6 of a

# options: 'am' =~ /AN/i  (options go after last slash)
# i case insensitive
# m make dot match newlines
# x ignore whitespace in regex
# o perform #{...} substitutions only once
