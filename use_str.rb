require_relative "str"
include Str

puts "Without passing parameters: "
puts Str.upper
puts Str.lower
puts ""
puts "Passing paramters :"
puts Str.upper("demo string")
puts Str.lower("Demo String Name")
