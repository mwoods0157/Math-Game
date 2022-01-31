class Question
    def initialize
        @num1 = rand(1..20)
        @num2 = rand(1..20)
        @sum = @num1 + @num2
    end
    
    def ask(name)
        puts "#{name}: what is #{@num1} plus #{@num2}?"
    end

    def answer(input)
        @sum === input
    end
end

#The question object needs 2 random numbers, a sum, and 
#an if statement for validating results of the input. 
#Issue with @num1/2 not showing up on the CLI