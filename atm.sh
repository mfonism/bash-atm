!/bin/bash


PIN="0"
TRANTYPE="0"
ACCTYPE="0"

function displayDashedLine {
    echo "---------------------------------------------"
}

function getPin {
    displayDashedLine
    echo "Welcome, please enter your pin at the prompt:"
    displayDashedLine
    read PIN
}

function getTransactionType {
    displayDashedLine
    echo "Please select transaction type:"
    displayDashedLine
    echo "Select 1 to make a Withdrawal."
    echo "Select 2 to make a Transfer."
    echo "Select 3 to Change your PIN."
    echo "Select 4 to Buy Airtime"
    displayDashedLine
    read TRANTYPE
}

function getAccountType {
    displayDashedLine
    echo "Please select account type"
    displayDashedLine
    echo "Select 1 for Current"
    echo "Select 2 for Savings"
    displayDashedLine
    read ACCTYPE
}

getPin
echo $PIN
getTransactionType
echo $TRANTYPE
getAccountType
echo $ACCTYPE