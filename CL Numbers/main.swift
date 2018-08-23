//
//  main.swift
//  CL Numbers
//
//  Created by Jacob Glass on 8/20/18.
//  Copyright © 2018 Jacob Glass. All rights reserved.
//

import Foundation

var playingGame = true


while playingGame == true {        //This loop is what makes the game run. If the variable is switch to false, the game ends.
    print("Welcome to CL Numbers! Glad to see you!")
    print("Let's start with guessing any number between 1 and 100! And don't worry, I've already selected ny number! ;)")
let randomNum = arc4random_uniform(101)
var guessCounter = 5
var userGuess = UInt32(readLine()!)


//Input Validation - Makes sure that user inputs an integer.
while userGuess == nil{
    print("Please enter a valid guess.")
    userGuess = UInt32(readLine()!)
}
//print(randomNum)   //For Debug mode only.
if userGuess != randomNum {                             //This is what runs if the user guesses wrong.
    while userGuess != randomNum && guessCounter > 0 {
        print("That is wrong, please guess again.")
        if userGuess! < randomNum {
            print("Your guess was too low!")
        }                                             //These lines tell the user if their guess was too high, or too low.
        if userGuess! > randomNum {
            print("Your guess was too high!")
        }
        guessCounter -= 1
        print("You have \(guessCounter) guesses left.")        //This bit tells the user how many guesses they have left and prompts them for another input.
        userGuess = UInt32(readLine()!)
        if guessCounter == 0 {                                 //This if statement only triggers if the user is out of guesses and is asked if they would like to play again.
            print("I'm sorry, but that's game! I win!")
            print("Oh! And the number was \(randomNum)")
        }
        if guessCounter == 0 {
            print("Would you like to play again? Y/N")
            var stillPlaying = readLine()!.uppercased()
            if stillPlaying == "N" {
                playingGame = false
            }
        }
        if randomNum == userGuess {                           //This statement activates when the user guesses the number correctly. Asks the user if they would like to play again.
            print("Would you like to play again? Y/N")
            var stillPlaying = readLine()!.uppercased()
            if stillPlaying == "Y" {
                playingGame = true
                if playingGame == true {
                    
                }
            }
        }
    }
}


if userGuess == randomNum && guessCounter == 5 {     //Each of these statements are the congratulations the player recieves after beating the game. Each is based off the amount of guesses the user had left.
    print("Congratulations! First guess! What luck!")
}

if userGuess == randomNum && guessCounter == 4 {
    print("Congratulations! You had 4 guesses left! What a pro!")
}

if userGuess == randomNum && guessCounter == 3 {
    print("Congratulations! Third times the charm!")
}

if userGuess == randomNum && guessCounter == 2 {
    print("Congratulations! You had two guesses left!")
}

if userGuess == randomNum && guessCounter == 1 {
    print("Congratulations! You got it on your last guess!")
}


}
