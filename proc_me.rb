def my_method
  puts "hello method"
  yield
end
my_method {puts "hello block"}
my_method