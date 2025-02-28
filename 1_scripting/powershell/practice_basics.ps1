# This is a comment.

# Variable to store car type
$carType = "SUV"

# Display the car type
Write-Host "Car type: $carType"

# Creating an array of car models
$carModels = "Sedan", "SUV", "Convertible"

# Accessing array elements
$firstModel = $carModels[0]
Write-Host "First car model: $firstModel"

# Creating a hashtable of car wash prices
$carWashPrices = @{
    "Basic" = 10
    "Premium" = 20
    "Deluxe" = 30
}

# Accessing the values using keys
$basicPrice = $carWashPrices["Basic"]
Write-Host "Price for Basic Wash: $basicPrice"

# Creating a function
function StartCarWash {
    param (
        [string]$CarType
    )
        Write-Host "Washing $CarType."
}
StartCarWash -CarType "Sedan"



