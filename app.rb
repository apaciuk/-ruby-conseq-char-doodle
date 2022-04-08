# frozen_string_literal: true

str = 'AAAbbCCCCDD'

str.each_char.chunk_while(&:==).map(&:join) # or .map(&:length)

# Output is => ["AAA", "bb", "CCCC", "DD"]

str.each_char.chunk(&:itself).map(&:join) 

# Output is ["AAAA", "bbb", "CCCCC", "DDD"]

str.scan(/(\w)(\1*)/).map(&:join)

# Output is ["AAA", "bb", "CCCC", "DD"] 

str.scan(/(\w)(\1*)/).map(&:join).map(&:length)

# Output is [3, 2, 4, 2]

































