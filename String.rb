#===============================================================================
#String
#===============================================================================
"zz".next    # "aaa"
'abc'.start_with?('a')   #true
'abc'.end_with?('c')   #true
'abc'.include?('b')      #

#special characters:
26.chr  #sub char
.ord  #get the char number

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



#===============================================================================
require 'strscan'
s = StringScanner.new("//SPOOL2   DD  DSN=PEN.R&DB..OPER.R5400.RPT(+1),")

# Symbols 
#===============================================================================
:flag_a
"some_String".to_sym #:some_string

# create list using eof to end the list... i think
#===============================================================================
__END__
Doom
Quake
Diablo