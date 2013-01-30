=begin
collect :
   it will create a new array containg the values return by the block
   and the block is executed onces for each element of self
detect :
   Detect returns the first item in the list for which the block returns TRUE
   and the block is executed onces for each element of self
=end

class Array
  def collect(code_blk)
    self.each_with_index do |n, i|
        self[i] = code_blk.call(n)
     end
   end

  def detect(code_blk)
    self.each do |n|
        if (code_blk.call(n) == true)
        	puts "num #{n}"
           break
        else
       	   next
        end
     end
   end

def inject(code)
    result=code;
      self.each do |ele|
        result=yield(result,ele)
      end
    return result
end

end

a = (1..10).to_a

detect_proc1 = Proc.new do |x| x > 5 end
detect_proc2 = Proc.new do |x| x < 5 end

collect_proc1 = Proc.new do |x| x*2 end
collect_proc2 = Proc.new do |x| x*2 end

puts a.inject(1) { |result,element| result * element }
puts a.inject(0) { |result,element| result + element }


puts a.inspect

puts "detect proc"
puts a.detect(detect_proc1)
puts a.detect(detect_proc2)

puts "collect proc"
puts a.collect(collect_proc1).inspect
puts a.collect(collect_proc2).inspect


