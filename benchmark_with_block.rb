def benchmark
  start_time = Time.now # Record the start time
  yield # Execute the blovk of code passed to the method
  end_time = Time.now # Record the end time
  end_time - start_time # Return the time difference (duration) in seconds
end
 
# Be careful, pasting this into IRB will take a long time to print.
# It's a loooong string. :)
long_string = "apple"*100000000 # A large string
 
running_time = benchmark { long_string.reverse } # Benchmark the reverse method
 
puts "string.reverse took #{running_time} seconds to run"