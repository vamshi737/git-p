/bin/bash

# Prompt the user to enter a name
echo "Enter your name: "
read NAME

# Convert input to lowercase to make the comparison case-insensitive
NAME_LOWER=$(echo "$NAME" | tr '[:upper:]' '[:lower:]')

# Single condition to check if the name is Vamshi or Shiva
if [ "$NAME_LOWER" = "vamshi" ] || [ "$NAME_LOWER" = "shiva" ]; then
    echo "Hello, $NAME! Welcome!"
else
    echo "You are not Vamshi or Shiva."
fi
