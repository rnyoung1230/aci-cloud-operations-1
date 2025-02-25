# Ask user to enter a number
x=int(input("Enter a number\n>"))
y=int(input("Enter a number\n>"))
z=int(input("Enter a number\n>"))

# Put numbers in a list and confirm with user
numbers = [x, y, z]
print(f"Your entered numbers are {numbers}.")
answer = input("Is that correct? Y or N\n>")

if answer == "Y":
    # Sum the numbers
    total = sum(numbers)
    # Display a message to console with the calculated sum
    print(f"Python says the answer is {total}.")
else:
    print("Sorry, let's play again another time.")

