#!/bin/bash

LOG_FILE="script.log"

log_debug() {
    echo "$(date): DEBUG - $1" >> "$LOG_FILE"
}
log_info() {
    echo "$(date): INFO - $1" >> "$LOG_FILE"
}
log_warn() {
    echo "$(date): WARN - $1" >> "$LOG_FILE"
}
log_error() {
    echo "$(date): ERROR - $1" >> "$LOG_FILE"
}

# Simulate various log messages
log_info "Script started."
log_warn "Warning: Something unexpected happened."
log_error "Error: Critical issue occurred."
