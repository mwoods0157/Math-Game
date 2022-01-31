class Game
    def initialize(name)
        @name = name
        @player1 = Player.new('Player 1')
        @player2 = Player.new('Player 2')
    end

    def start
        puts "New game starting: Welcome #{@player1} and #{@player2}"
        turns
    end

    def show_life
        puts "P1: #{@player1.life}/3 vs. P2: #{@player2.life}/3"
    end

    def checkWin
        if @player1.dead
            win(@player2)
        elsif @player2.dead
            win(@player1)
        end
    end

    def win(player)
        puts "#{player.name} wins, with a score of #{player.life}"
        puts "-----GAME OVER-----"
        exit(0)
    end

    def turns
        @player1.new_question
        checkWin
        @player2.new_question
        checkWin
        show_life
        puts "-----NEW TURN-----"
        turns
    end
end

#Game should initalize both the players, place the first player as the current player
#place the second player as the question player, and then loop through questions until 
#one of the players reaches 0 life. After that the game will print out a winner and then 
#game over/goodbye.
#Should check through to checkWin to see if a player has won
