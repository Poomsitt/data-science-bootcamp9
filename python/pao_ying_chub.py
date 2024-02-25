#PaoTingChub
import random


def game():
    print("Hi! Welcome to Pao Yimg Chub Game!")
    player_score = 0
    bot_score = 0
    hand_list = ["scissors","rock","paper"]



    while True:
        player_hand = (input(f"Choose your hand {hand_list} or quite: "))
        bot_hand = random.choice(hand_list)
        if player_score == 5 or bot_score == 5 or player_hand == "quite":
            print("Game Stop!. Thank You for playing")
            break
        elif player_hand == bot_hand:
            print(f"Your hand: {player_hand}", "Vs.", f"Bot hand {bot_hand}")
            print("Draw")
            player_score = player_score + 0
            both_score = bot_score + 0
            print(f"Your score = {player_score}", "Vs.", f"Bot score {bot_score}")
        elif player_hand == ("scissor") and bot_hand == ("paper"):
            print(f"Your hand: {player_hand}", "Vs.", f"Bot hand {bot_hand}")
            print("You Win")
            player_score = player_score + 1
            print(f"Your score = {player_score}", "Vs.", f"Bot score {bot_score}")
        elif player_hand == ("rock") and bot_hand == ("scissors"):
            print(f"Your hand: {player_hand}", "Vs.", f"Bot hand {bot_hand}")
            print("You Win")
            player_score = player_score + 1
            print(f"Your score = {player_score}", "Vs.", f"Bot score {bot_score}")
        elif player_hand == ("paper") and bot_hand == ("rock"):
            print(f"Your hand: {player_hand}", "Vs.", f"Bot hand {bot_hand}")
            print("You Win")
            player_score = player_score + 1
            print(f"Your score = {player_score}", "Vs.", f"Bot score {bot_score}")
        else:
            print(f"Your hand: {player_hand}", "Vs.", f"Bot hand {bot_hand}")
            print("You lose!")
            bot_score = bot_score + 1
            print(f"Your score = {player_score}", "Vs.", f"Bot score {bot_score}")
