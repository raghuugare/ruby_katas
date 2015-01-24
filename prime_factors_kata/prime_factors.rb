 class PrimeFactors

   def factorize(n)
     factors = []
     candidate = 2

     while n > 1
       while n % candidate == 0
         factors << candidate
         n /= candidate
       end
     candidate += 1
     end

     factors
   end

 end
