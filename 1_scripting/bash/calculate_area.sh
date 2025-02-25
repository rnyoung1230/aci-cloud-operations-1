#!/bin/bash

# Global variable
length=5

# Function to calculate the area of a rectangle
calculate_area() {
    local width=3 # local variable for the width of a rectangle
    local area=$((length*width)) # Calculate the area
    echo "The area of the rectangle is $area square units."
}

# Call the function
calculate_area

# Attempt to access the local variables outside the function
echo "Outside the function: "
echo "Length: $length" #Global variable
echo "Width: $width" #Local variable...value will be empty
echo "Area: $area" #Local variable
