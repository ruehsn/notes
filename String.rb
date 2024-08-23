#differnt was of quoting string
%Q<Different quote symbols so ' " without escaping>

%{A long string without \
a new line in the middle}

"removes only the last new line \n\n".chomp #"removes only the last new line \n"

#another way of string interpolation
"One for %s, one for me." % name

#multi line quote
puts <<GROCERY_LIST
Grocery list
----
1. Salad mix.
2. Strawberries.*
4. Milk.*

* Organic
GROCERY_LIST

# create list using eof to end the list
__END__
Doom
Quake
Diablo


#clean text from invalid chars:
text.encode("US-ASCII", invalid: :replace, undef: :replace, replace: "")

#replacing String
'yes yes'.sub('yes', 'no')  #no yes -does only first one
'yes yes'.gsub('yes', 'no') #no no  -does as many as possible

"zz".next                   # "aaa"
'abc'.start_with?('a')      #true
'abc'.end_with?('c')        #true
'abc'.include?('b')         #

'S000 U4001'.gsub('S000 ', '') #U4001
#special characters:
26.chr  #sub char
.ord  #get the char number





#===============================================================================
require 'strscan'
s = StringScanner.new("//SPOOL2   DD  DSN=PEN.R&DB..OPER.R5400.RPT(+1),")

# Symbols
#symbols are immutable, can't change
#
#===============================================================================

:flag_a

"some_String".to_sym #:some_string



Methods for Querying Counts

length, size: Returns the count of characters (not bytes).
empty?:   Returns true if self.length is zero; false otherwise.
bytesize: Returns the count of bytes.
count:    Returns the count of substrings matching given strings.

Substrings
=~:          Returns the index of the first substring that matches a given Regexp or other object; returns nil if no match is found.
index:       Returns the index of the first occurrence of a given substring; returns nil if none found.
rindex:      Returns the index of the last occurrence of a given substring; returns nil if none found.
include?:    Returns true if the string contains a given substring; false otherwise.
match:       Returns a MatchData object if the string matches a given Regexp; nil otherwise.
match?:      Returns true if the string matches a given Regexp; false otherwise.
start_with?: Returns true if the string begins with any of the given substrings.
end_with?:   Returns true if the string ends with any of the given substrings.

Encodings
encoding:             Returns the Encoding object that represents the encoding of the string.
unicode_normalized?:  Returns true if the string is in Unicode normalized form; false otherwise.
valid_encoding?:      Returns true if the string contains only characters that are valid for its encoding.
ascii_only?:          Returns true if the string has only ASCII characters; false otherwise.

Other
sum:    Returns a basic checksum for the string: the sum of each byte.
hash:   Returns the integer hash code.

Methods for Comparing
==, ===:  Returns true if a given other string has the same content as self.
eql?:     Returns true if the content is the same as the given other string.
<=>:      Returns -1, 0, or 1 as a given other string is smaller than, equal to, or larger than self.
casecmp:  Ignoring case, returns -1, 0, or 1 as a given other string is smaller than, equal to, or larger than self.
casecmp?: Returns true if the string is equal to a given string after Unicode case folding; false otherwise.

Methods for Modifying a String Each of these methods modifies self.
Insertion
insert: Returns self with a given string inserted at a given offset.
<<:     Returns self concatenated with a given string or integer.

Substitution
sub!:         * Replaces the first substring that matches a given pattern with a given replacement string; returns self if any changes, nil otherwise.
gsub!:        * Replaces each substring that matches a given pattern with a given replacement string; returns self if any changes, nil otherwise.
succ!, next!: * Returns self modified to become its own successor.
reverse!:     * Returns self with its characters in reverse order.
setbyte:      * Sets the byte at a given integer offset to a given value; returns the argument.
tr!:          * Replaces specified characters in self with specified replacement characters; returns self if any changes, nil otherwise.
tr_s!:        * Replaces specified characters in self with specified replacement characters, removing duplicates from the substrings that were modified; returns self if any changes, nil otherwise.
replace:        Returns self with its entire content replaced by a given string.

Casing - (all have non-bang methods too)
capitalize!:  Upcases the initial character and downcases all others; returns self if any changes, nil otherwise.
downcase!:    Downcases all characters; returns self if any changes, nil otherwise.
upcase!:      Upcases all characters; returns self if any changes, nil otherwise.
swapcase!:    Upcases each downcase character and downcases each upcase character; returns self if any changes, nil otherwise.

Encoding
encode!:            * Returns self with all characters transcoded from one given encoding into another.
unicode_normalize!: * Unicode-normalizes self; returns self.
scrub!:             * Replaces each invalid byte with a given character; returns self.
force_encoding:       Changes the encoding to a given encoding; returns self.

Deletion
clear:         Removes all content, so that self is empty; returns self.
slice!, []=: * Removes a substring determined by a given index, start/length, range, regexp, or substring.
squeeze!:    * Removes contiguous duplicate characters; returns self.
delete!:     * Removes characters as determined by the intersection of substring arguments.
lstrip!:     * Removes leading whitespace; returns self if any changes, nil otherwise.
rstrip!:     * Removes trailing whitespace; returns self if any changes, nil otherwise.
strip!:      * Removes leading and trailing whitespace; returns self if any changes, nil otherwise.
chomp!:      * Removes trailing record separator, if found; returns self if any changes, nil otherwise.
chop!:       * Removes trailing newline characters if found; otherwise removes the last character; returns self if any changes, nil otherwise.

Methods for Converting to New String -Each of these methods returns a new String based on self, often just a modified copy of self.
Extension
*:        Returns the concatenation of multiple copies of self,
+:        Returns the concatenation of self and a given other string.
center:   Returns a copy of self centered between pad substring.
concat:   Returns the concatenation of self with given other strings.
prepend:  Returns the concatenation of a given other string with self.
ljust:    Returns a copy of self of a given length, right-padded with a given other string.
rjust:    Returns a copy of self of a given length, left-padded with a given other string.

Encoding
b: Returns a copy of self with ASCII-8BIT encoding.

Substitution
dump:        Returns a copy of self with all non-printing characters replaced by xHH notation and all special characters escaped.
undump:      Returns a copy of self with all \xNN notation replace by \uNNNN notation and all escaped characters unescaped.
sub:         Returns a copy of self with the first substring matching a given pattern replaced with a given replacement string;.
gsub:        Returns a copy of self with each substring that matches a given pattern replaced with a given replacement string.
succ, next:  Returns the string that is the successor to self.
reverse:     Returns a copy of self with its characters in reverse order.
tr:          Returns a copy of self with specified characters replaced with specified replacement characters.
tr_s:        Returns a copy of self with specified characters replaced with specified replacement characters, removing duplicates from the substrings that were modified.
%:           Returns the string resulting from formatting a given object into self

byteslice:  Returns a substring determined by a given index, start/length, or range.
chr:        Returns the first character.

Duplication
to_s, $to_str: If self is a subclass of String, returns self copied into a String; otherwise, returns self.

Converting to Non-String Each of these methods converts the contents of self to a non-String. Characters, Bytes, and Clusters
bytes:             Returns an array of the bytes in self.
chars:             Returns an array of the characters in self.
codepoints:        Returns an array of the integer ordinals in self.
getbyte:           Returns an integer byte as determined by a given index.
grapheme_clusters: Returns an array of the grapheme clusters in self.

Splitting
lines:      Returns an array of the lines in self, as determined by a given record separator.
partition:  Returns a 3-element array determined by the first substring that matches a given substring or regexp,
rpartition: Returns a 3-element array determined by the last substring that matches a given substring or regexp,
split:      Returns an array of substrings determined by a given delimiter – regexp or string – or, if a block given, passes those substrings to the block.

Matching
scan:     Returns an array of substrings matching a given regexp or string, or, if a block given, passes each matching substring to the block.
unpack:   Returns an array of substrings extracted from self according to a given format.
unpack1:  Returns the first substring extracted from self according to a given format.

Numerics
hex:  Returns the integer value of the leading characters, interpreted as hexadecimal digits.
oct:  Returns the integer value of the leading characters, interpreted as octal digits.
ord:  Returns the integer ordinal of the first character in self.
to_i: Returns the integer value of leading characters, interpreted as an integer.
to_f: Returns the floating-point value of leading characters, interpreted as a floating-point number.

Strings and Symbols
inspect: Returns copy of self, enclosed in double-quotes, with special characters escaped.
to_sym, intern: Returns the symbol corresponding to self.

Methods for Iterating
each_byte:      Calls the given block with each successive byte in self.
 :      Calls the given block with each successive character in self.
each_codepoint: Calls the given block with each successive integer codepoint in self.
each_grapheme_cluster: Calls the given block with each successive grapheme cluster in self.
each_line:      Calls the given block with each successive line in self, as determined by a given record separator.
upto:           Calls the given block with each string value returned by successive calls to succ.
