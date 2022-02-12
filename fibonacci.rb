#Recursive Fibonacci sequence
require 'benchmark/ips'
def fib_loop(n = 8) 
    a = 1
    b = 1
    n.times do 
        temp = a
        a = b 
        b = a + temp
    end
    a
end

 def fib_rec_no_memoization(n = 8) 
    if n < 2
        return 1
    else
        return fib_rec_no_memoization(n-1) + fib_rec_no_memoization(n-2)
    end
 end


@hash_memory = {}
 def fib_rec_with_memoization(n = 8)
    if @hash_memory.has_key?(n) 
        @hash_memory[n]
    elsif n < 2
        1
    else
        @hash_memory[n] = fib_rec_with_memoization(n-1) + fib_rec_with_memoization(n-2)
    end
 end
 

 Benchmark.ips do |x|
    x.report('fib_loop: ')        { fib_loop() }
    x.report('fib_rec_no_memoization: ') { fib_rec_no_memoization() }
    x.report('fib_rec_with_memoization: ') { fib_rec_with_memoization() }
    x.compare!
end
