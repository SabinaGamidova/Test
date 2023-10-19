require_relative 'prime_exception'

class PrimeValidator
    def is_prime(num)
        first_count = 0
        second_count = 2
        while(second_count < num)
            first_count += 1 if (num % second_count == 0)
            second_count += 1
        end
        first_count <= 1
    end 
end