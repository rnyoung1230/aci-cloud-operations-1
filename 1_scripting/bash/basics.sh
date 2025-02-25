#!/bin/bash
# This is a comment

# Define the variables
name="Pat Candella"
sent_1="Customer name is $name"
car="Mercedes Benz"
car_wash_services=("Basic wash" "Premium wash" "Interior detail" "Full service")


# Display a message using the above variables
echo "$sent_1. $name owns a $car."

# Assign the echo command output to a variable named services
services=$(echo "Our car wash services include: ${car_wash_services[2]} and ${car_wash_services[3]}")

# Creat a function named greet() that references the variable services
greet() {
    echo "Welcome to AnyCompany Car Washes! $services."
}

# Call the function
greet
