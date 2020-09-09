!/bin/bash


PIN="0"
TRANSACTION_TYPE="0"
ACCOUNT_TYPE="0"
AMOUNT_INDEX="0"
AMOUNT="0"

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
        AMOUNT="Custom Amount"
    fi

}

# function payAmount {
#     echo "Please take your cash -- $AMOUNT"
# }

getPin
echo $PIN
getTransactionType
echo $TRANSACTION_TYPE
getAccountType
echo $ACCOUNT_TYPE
getAmountIndex
echo $AMOUNT_INDEX
getAmount
echo $AMOUNT