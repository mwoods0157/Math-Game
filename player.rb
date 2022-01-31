class Player
    attr_accessor :life, :name
    

    def initialize(name)
        @life = 3
        @name = name
    end

    def lose_life
        @life -= 1
    end

    def dead
        @life == 0
    end

    def new_question
        new_question = Question.new
        new_question.ask(name)
        print 'Answer: '
        @answer = $stdin.gets.chomp
        if new_question.answer(@answer.to_i)
            puts "YES! You are correct."
        else 
            puts "Seriously? No!"
            lose_life
        end
    end
end

#Each player object should contain the life (which should not be directly alterable),
#who the current player is, who the question player. These will switch each time a question is asked.