game <- function() {
     ## Greeting
print("Welcome to the 🔨,✂️,📃 game")
user_name <- readline("What is your name: ")
print( paste("Lets play the game", user_name) )

player_score <- 0
bot_score <- 0

## Game
    while (player_score < 3 & bot_score < 3) {
    hand <- c("hammer","scissors","paper")
    player_hand <- readline("Choose hammer,scissors,paper, or quite: ")
    bot_hand <- sample(hand,1)

        ## draw
        if(player_hand == bot_hand) {
            print(paste("bot_hand",bot_hand))
            print("Draw")
            print(paste("player",player_score, "VS","bot",bot_score))
        ##lose
        } else if((player_hand == "hammer" & bot_hand == "paper") |
               (player_hand == "paper" & bot_hand == "scissors") |
               (player_hand == "scissors" & bot_hand == "hammer"))
        {
            print(paste("bot_hand", bot_hand))
            print("You lose")
            bot_score = bot_score + 1
            print(paste("player",player_score, "VS","bot",bot_score))
        ##win
        } else if((player_hand == "hammer" & bot_hand == "scissors")|
                (player_hand == "scissors" & bot_hand == "paper") |
                (player_hand == "paper" & bot_hand == "hammer")) {

            print(paste("bot_hand",bot_hand))
            print("You win")
            player_score = player_score + 1
            print(paste("player",player_score,"VS","bot",bot_score))
            } else {print("Please, choose rock paper, scissors or quit")}

    flush.console()
    if(player_hand == "quite") {break}

        ## conclusion score
    if(player_score == 3) {print("You Win!")
    } else if(bot_score == 3){print("You Lose!")}

}
}
