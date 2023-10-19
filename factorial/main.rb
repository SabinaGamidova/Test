require_relative 'fact_exception'
require_relative 'fact'


begin
    calculator = FactorialCalculator.new

    if !ARGV.empty?

        if !ARGV.nil? && ARGV[0].match?(/^-?\d+(\.\d+)?$/)
            input = ARGV[0]

            parsed_float = input.to_f
            if input == parsed_float.to_s
                raise FactorialException.new("\nThere is no factorial from negative or fractional numbers\n\n")
            end

            number = input.to_i
            
        else
            raise FactorialException.new("\nIncorrect format of input\n\n")
        end
    else
        print "\nEnter your integer: "
        number = gets.chomp.to_i
    end

    result_iteratively = calculator.calc_factorial_iteratively(number)
    result_recursively = calculator.calc_factorial_recursively(number)

    puts "\nIteration: \n#{number}! = #{result_iteratively}\n\n"
    puts "Recursion: \n#{number}! = #{result_recursively}\n\n"

rescue FactorialException => e
    puts e.message
rescue SystemStackError => e
    puts "\nStack level too deep\n\n"
end