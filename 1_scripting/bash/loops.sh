#!/bin/bash

echo "##### For Loop Example 1 #####"
# For loop example 1

for i in $(seq 1 10)
do
    echo "Number: $i"
done

echo "##### For Loop Example 2 #####"
# For loop example 2

for i in {10..20}
do
    echo "Number: $i"
done

echo "##### 3-expression For Loop Example #####"
# For loop example 3

echo "Begin Rocket Launch Countdown..."

for ((i=10; i>0; i--)) 
do
   echo "T-$i"
   sleep 1
done

echo "BLAST OFF!!!"

# While loop examples
echo "##### While Loop Example #####"

count=5
while [ $count -gt 0 ];
do
   echo "Count: $count"
   count=$((count -1))
done

# Until loop examples
echo "##### Until Loop Example 1 #####"

count=1
until [ $count -gt 5 ];
do
   echo "Count: $count"
   count=$((count+1))
done

echo "##### Until Loop Example 2 #####"

#!/bin/bash

countdown=5

echo "Starting car wash..."

until [ $countdown -eq 0 ];
do
    echo "T-$countdown"
    ((countdown--))
    sleep 1 
done

echo "Your wash is complete!"
