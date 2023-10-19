require_relative 'prime_exception'
require_relative 'prime_num'

begin
    validator = PrimeValidator.new
    if !ARGV.empty?
        if ARGV[0].match?(/^[0-9]\d*$/)
            input = ARGV[0]
            number = input.to_i
        else
            raise PrimeException.new("\nIncorrect format of input\n\n")
        end
    else
        print "\nEnter your number: "
        number = gets.chomp.to_i
    end


    if validator.is_prime(number) && number != 0
        puts "\n#{number} is prime.\n\n"
    else
        puts "\n#{number} is NOT prime.\n\n"
    end

rescue PrimeException => e
    puts e.message
end