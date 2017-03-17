h = Hash.new
h.store("R", "Ruby")
p h.fetch("R")


h = {"a" => "a1", "b" => "b1"}
p h.keys
p h.values
p h.to_a


# h = Hash.new
h = Hash.new("Perl")
h.store("R", "Ruby")
p h["R"]
p h["P"]
