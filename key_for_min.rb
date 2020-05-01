require "pry"
# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  # saves the smaller value in memo, and takes the first elem of memo at the end (the key)
  smallest = name_hash.inject do|memo, (k, v)|
    memo = v < memo[1] ? [k,v] : memo
  end
  #handle the empty hash case...
  smallest ? smallest[0] : nil
end