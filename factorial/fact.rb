require_relative 'fact_exception'

class FactorialCalculator
  def calc_factorial_recursively(num)
    if num == 0 || num == 1
        return 1
    elsif num < 0 || num % 1 != 0
        raise FactorialException.new("\nThere is no factorial from negative or fractional numbers\n\n")
    else
      return num * calc_factorial_recursively(num - 1)
    end
  end

    def calc_factorial_iteratively(num) 
        fact = 1
            if (num == 0 || num == 1) 
                return fact
            elsif num < 0 || num % 1 != 0
                raise FactorialException.new("\nThere is no factorial from negative or fractional numbers\n\n")
            else
                counter = 1 
                while(counter <= num)
                    fact *= counter 
                    counter += 1
                end
            end
        fact
    end

end