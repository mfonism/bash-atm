!/bin/bash


PIN="0"
TTYPE="0"

function getPin {
    echo "Welcome, please enter your pin at the prompt:"
    read PIN
}

function getTransactionType {
    echo "Please select transaction type:"
    echo ""
    echo "Select 1 to make a Withdrawal."
    echo "Select 2 to make a Transfer."
    echo "Select 3 to Change your PIN."
    echo "Select 4 to Buy Airtime"
    read TTYPE
}

getPin
echo $PIN
getTransactionType
echo $TTYPE
