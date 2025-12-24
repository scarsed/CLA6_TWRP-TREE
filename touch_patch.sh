#!/bin/bash

# Script to modify binary file hex sequences

# Error handling function
die() {
    echo "ERROR: $*" >&2
    exit 1
}

# Validate input
validate_input() {
    # Check if a file is provided
    [ $# -eq 0 ] && die "Usage: $0 <binary_file>"
    
    # Check if file exists and is readable
    [ -f "$1" ] || die "File '$1' does not exist"
    [ -r "$1" ] || die "File '$1' is not readable"
}

# Modify binary file
modify_binary() {
    local input_file="$1"
    
    # Create temporary files with secure mktemp
    local hex_file
    local modified_hex_file
    hex_file=$(mktemp) || die "Failed to create temporary hex file"
    modified_hex_file=$(mktemp) || die "Failed to create temporary modified hex file"
    
    # Trap to ensure temporary files are always cleaned up
    trap 'rm -f "$hex_file" "$modified_hex_file"' EXIT

    # Convert binary to hex
    xxd -p "$input_file" > "$hex_file" || die "Failed to convert binary to hex"

    # First modification: Reverse and replace specific hex sequence
    tac "$hex_file" | sed '0,/600000544000/s/600000544000/600000540000/' | tac > "$modified_hex_file" || 
        die "Failed to perform first hex modification"

    # Second modification: Replace another specific hex sequence
    awk 'BEGIN { found = 0 }
    {
        if ($0 ~ /600000540000/) found = 1
        if (found && $0 ~ /20008052/) {
            sub(/20008052/, "00008052")
            found = 0
        }
        print
    }' "$modified_hex_file" > "$hex_file" || die "Failed to perform second hex modification"

    # Convert modified hex back to binary
    xxd -p -r "$hex_file" > "$input_file" || die "Failed to convert hex back to binary"
}

# Main script execution
main() {
    # Validate input
    validate_input "$@"

    # Modify the binary file
    modify_binary "$1"

    echo "Binary file successfully modified: $1"
}

# Run the main function with all script arguments
main "$@"
