MAX_RETRIES=5
INITIAL_SLEEP_INTERVAL=3
BACKOFF_MULTIPLIER=2
RETRYABLE_ERROR=1

retries=0

sleep_interval=$INITIAL_SLEEP_INTERVAL
while [ $retries -lt $MAX_RETRIES ]; do
    # Run an HTTP request
    curl -I https://www.amazo.com
    if [ $? -eq 0 ]; then
        # Successful command, exit the loop
        break
    else
        # Retryable error, increment retries, apply exponential backoff, and sleep
        retries=$((retries + 1))
        sleep $sleep_interval
        sleep_interval=$((sleep_interval * BACKOFF_MULTIPLIER))
    fi
done

if [ $retries -eq $MAX_RETRIES ]; then
    echo "Maximum retry attempts reached. Exiting script."
    exit 1
fi
