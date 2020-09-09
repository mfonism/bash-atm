!/bin/bash


PIN="0"

function getPin {
    echo "Welcome, please enter your pin at the prompt: "
    read PIN
}

getPin
echo $PIN
