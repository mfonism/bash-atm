!/bin/bash


PIN=""
TRANSACTION_TYPE=""
ACCOUNT_TYPE=""
AMOUNT_INDEX=""
AMOUNT=""

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

    read TRANSACTION_TYPE
}

function getAccountType {
    displayDashedLine
    echo "Please select account type"
    displayDashedLine
    echo "Select 1 for Current"
    echo "Select 2 for Savings"
    displayDashedLine

    read ACCOUNT_TYPE
}

function getAmountIndex {

    displayDashedLine
    echo "Please select amount"
    displayDashedLine
    echo "Select 1 for 5,000"
    echo "Select 2 for 10,000"
    echo "Select 3 for 15,000"
    echo "Select 4 for 20,000"
    echo "Select 5 to enter a custom amount"

    read AMOUNT_INDEX

    getAmount
}

function getAmount {
    if [[ $AMOUNT_INDEX -eq "1" ]]
    then
        AMOUNT="5000"
    elif [[ $AMOUNT_INDEX -eq "2" ]]
    then
        AMOUNT="10000"
    elif [[ $AMOUNT_INDEX -eq "3" ]]
    then
        AMOUNT="15000"
    elif [[ $AMOUNT_INDEX -eq "4" ]]
    then
        AMOUNT="20000"
    else
        while [[ $AMOUNT -eq "" ]]
        do
            getCustomAmount
        done
    fi
}

function getCustomAmount {
    displayDashedLine
    echo "Please enter the amount you wish to withdraw"
    echo "Amount should not include space characters, commas, periods, and other non-numeric characters."
    echo "Amount should be from 500 and upwards, but not more than 50000."
    displayDashedLine

    read AMOUNT

    checkCustomAmount
}

function checkCustomAmount {
    if [[ $AMOUNT -lt "500" ]]
    then
        echo "ERROR: The amount you entered was lower than 500!"
        getCustomAmount
    elif [[ $AMOUNT -gt "50000" ]]
    then
        echo "ERROR: The amount you entered was greater than 50000!"
        getCustomAmount
    else
        continue
    fi
}

function payAmount {
    echo "Please take your cash -- $AMOUNT"
}

getPin
getTransactionType
getAccountType
getAmountIndex
getAmount
payAmount
