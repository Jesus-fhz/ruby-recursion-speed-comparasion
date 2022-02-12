#Recursive Fibonacci sequence


#index: 0 1 2 3 4 5 6 8 
#sequence: 1,1,2,3,5,8,13,21

# def fib(n) 

#     a = 1
#     b = 1
#     n.times do 
#         temp = a
#         a = b 
#         b = a + temp
#     end
#     a
# end

# puts fib(8)

#HOMEWORK CHALLENGE: "memoize" the fib_rec() 
#Create a hash whose keys are the n argument values given t othe function
#and the first time an answer for n is calculated, store that answer as they value of the n key in the hash
#When the function run check if the hash has the key already defined for that value

#rec fib ()

#  def fib_rec(n)

#     if n < 2
#         return 1
#     else
#         return fib_rec(n-1) + fib_rec(n-2)
#     end
#  end


@hash_memory = {}
 def fib_rec_memo(n)
    if @hash_memory.has_key?(n) 
        @hash_memory[n]
    elsif n < 2
        1
    else
        @hash_memory[n] = fib_rec_memo(n-1) + fib_rec_memo(n-2)
    end
 end
 puts fib_rec_memo(100)