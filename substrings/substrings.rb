def substrings(words, valid_substrings)
  valid_substrings.reduce([]) do |result, substring|
    matches = words.downcase.scan(substring)
    result += matches unless matches.empty?
    result
  end.tally
end


dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

# results given on odin site:
result_1 = { "below" => 1, "low" => 1 }
result_2 = { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }

p substrings("below", dictionary)
# compare with results given on odin site:
p substrings("below", dictionary) == result_1

p substrings("Howdy partner, sit down! How's it going?", dictionary)
# compare with results given on odin site:
p substrings("Howdy partner, sit down! How's it going?", dictionary) == result_2
