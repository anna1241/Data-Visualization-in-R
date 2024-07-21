choices <- expand.grid(Item = c("Coin", "Dice"))

selected_item <- sample(choices$Item, 1)

if (selected_item == "Coin") {
  print("Coin is selected")
  coin_result <- sample(c("Head", "Tail"), 1)
  if (coin_result == "Head") {
    dice_rolls <- sample(1:6, 2, replace = TRUE)
    print(paste("Coin Toss:", coin_result))
    print(paste("Dice Rolls:", dice_rolls))
  } else {
    dice_rolls <- sample(1:6, 3, replace = TRUE)
    print(paste("Coin Toss:", coin_result))
    print(paste("Dice Rolls:", dice_rolls))
  }
} else {
  print("Dice is selected")
  dice_roll <- sample(1:6, 1)
  coin_tosses <- sample(c("Head", "Tail"), dice_roll, replace = TRUE)
  print(paste("Dice Roll:", dice_roll))
  print(paste("Coin Tosses:", coin_tosses))
}