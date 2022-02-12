require 'benchmark/ips'
def countdown (n = 10)
    while n>= 0
        #puts n
        n = n - 1
    end
   #puts 'Blast off!'
end

def countdown_rec( n = 10)
    #Define a base case: a condition under which
    #this fucntion STOPS calling itself recursively;
    #otherwise, you will have an infinite loop/regress
    #(actually you won't, you will blow the stack)
    if n < 0
        #puts "Blats off!"
    else
        #not finish counting yet 
        #p n
        countdown_rec (n - 1)
    end

end

Benchmark.ips do |x|
    x.report('countdown: ')        { countdown() }
    x.report('countdown_rec: ') { countdown_rec() }
    x.compare!
end

