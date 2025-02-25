#!/bin/bash
# This is a comment

# Define the variables
name="Pat Candella"
message="Customer name is $name"
car="Mercedes Benz"
car_wash_services=("basic wash" "premium wash" "interior detail" "full service")


# Display a message using the above variables
echo "$message. He owns a $car."

# Assign the echo command output to a variable named services
services=$(echo "Our car wash services include: ${car_wash_services[0]} and ${car_wash_services[1]}")

# Create a function named greet() that references the variable services
greet() {
    echo "Welcome to AnyCompany Car Washes $name! $services."
}

# Call the function
greet
