#!/bin/bash

# Displays "Hello World!" on the screen
echo "Hello World!"

# Create a function that does the same thing

message="Hello Robert, how are you today?"

greet() {
   echo $message
}

greet

# Create a function that receives an argument

introduce() {
    echo "My name is $1 $2."
}

introduce "Nikki" "Wolfe"
