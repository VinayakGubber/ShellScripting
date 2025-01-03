stty -echo

# Prompt to enter the first password
echo "Enter password:"
read pass1

# Prompt to confirm the password
echo "Confirm password:"
read pass2

# Check if both passwords match
if [ "$pass1" = "$pass2" ]; then
    echo "Terminal is locked."

    # Set trap for signals to unlock (1: SIGHUP, 2: SIGINT, 15: SIGTERM)
    trap 'echo "Terminal unlocked."; stty echo; exit' 1 2 15

    # Infinite loop to simulate the terminal lock
    while true; do
        # Prompt for the password to unlock
        echo "Enter password to unlock:"
        read pass3

        # Check if the entered password matches the original one
        if [ "$pass3" = "$pass2" ]; then
            # If correct, unlock the terminal
            echo "Terminal unlocked."
            stty echo
            exit
        else
            # Incorrect password, prompt again
            echo "Try again"
        fi
    done
else
    # Passwords don't match
    echo "Passwords do not match. Exiting."
    stty echo
    exit 1
fi
