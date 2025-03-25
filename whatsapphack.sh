#!/bin/bash

# Clear the screen
clear

# Function to print colored text
print_colored_text() {
    local text="$1"
    local color="$2"
    echo -e "\e[${color}m${text}\e[0m"
}

# ASCII Art Banner
ascii_art="
██╗    ██╗██╗  ██╗ █████╗ ████████╗███████╗ █████╗ ██████╗ ██████╗ ██╗  ██╗ █████╗  ██████╗██╗  ██╗███████╗██████╗
██║    ██║██║  ██║██╔══██╗╚══██╔══╝██╔════╝██╔══██╗██╔══██╗██╔══██╗██║  ██║██╔══██╗██╔════╝██║ ██╔╝██╔════╝██╔══██╗
██║ █╗ ██║███████║███████║   ██║   ███████╗███████║██████╔╝██████╔╝███████║███████║██║     █████╔╝ █████╗  ██████╔╝
██║███╗██║██╔══██║██╔══██║   ██║   ╚════██║██╔══██║██╔═══╝ ██╔═══╝ ██╔══██║██╔══██║██║     ██╔═██╗ ██╔══╝  ██╔══██╗
╚███╔███╔╝██║  ██║██║  ██║   ██║   ███████║██║  ██║██║     ██║     ██║  ██║██║  ██║╚██████╗██║  ██╗███████╗██║  ██║
 ╚══╝╚══╝ ╚═╝  ╚═╝╚═╝  ╚═╝   ╚═╝   ╚══════╝╚═╝  ╚═╝╚═╝     ╚═╝     ╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝
                                This Tool is Created By @karthithehacker
                                         Instagram:- @karthithehacker

                                     ⚠️ Only for Educational Purpose ⚠️
"

# Print ASCII art text in green color
print_colored_text "$ascii_art" "32"

# Check if the phone number argument is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <phone_number>"
    exit 1
fi

# Get the phone number from the argument
phone_number="$1"

# X and Y coordinates in hexadecimal (replace with your desired values)
x_hex="000002ac"
y_hex="00000583"

# Convert hexadecimal to decimal
x_dec=$((16#$x_hex))
y_dec=$((16#$y_hex))

# Launch WhatsApp with the specified phone number and message
adb shell "am start -a android.intent.action.VIEW -d 'whatsapp://send?phone=$phone_number&text=😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈😈'" > /dev/null 2>&1

# Wait for a moment to ensure WhatsApp is launched
sleep 2

# Simulate a mouse tap event at the specified x and y coordinates
adb shell input mouse tap $x_dec $y_dec > /dev/null 2>&1
