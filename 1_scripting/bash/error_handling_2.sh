#!/bin/bash

# Define a custom error handling function
handle_error() {
   echo "An error occurred. Exiting script."
   exit 1
}

# Set up a trap to run the error handling function on ERR signal
trap 'handle_error' ERR

# Simulate an error
non_existent_command
