def my_method(&block)
  puts "hello method"
  block.call
  #block
end
 
my_block = my_method { puts "hello block" }
#my_block.call