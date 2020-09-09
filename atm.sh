!/bin/bash


PERFORM_ANOTHER_TRANSACTION="1"
PIN=""
TRANSACTION_TYPE=""
ACCOUNT_TYPE=""
AMOUNT_KEY=""
AMOUNT_VALUE=""


function displayDashedLine {
    echo "---------------------------------------------"
}


function getPin {
    echo ""
    displayDashedLine
    echo "Welcome, please enter your pin at the prompt:"
    displayDashedLine

    read PIN
}


function performGenericTransaction {
    echo ""
    displayDashedLine
    echo "Please select transaction type:"
    displayDashedLine
    echo "Select 1 to make a Withdrawal."
    echo "Select 2 to make a Transfer."
    echo "Select 3 to Change your PIN."
    echo "Select 4 to Buy Airtime"
    displayDashedLine

    read TRANSACTION_TYPE

    if [[ $TRANSACTION_TYPE -eq "1" ]]
    then
        performWithdrawal
    else
        echo ""
        echo "Decision tree to be implemented by EnKay."
    fi
}


function performWithdrawal {
    getAccountType
    getWithdrawalAmount
    payWithdrawalAmount
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


function getWithdrawalAmount {
    getAmountKey
    getAmountValue
}


function getAmountKey {

    displayDashedLine
    echo "Please select amount"
    displayDashedLine
    echo "Select 1 for 5,000"
    echo "Select 2 for 10,000"
    echo "Select 3 for 15,000"
    echo "Select 4 for 20,000"
    echo "Select 5 to enter a custom amount"

    read AMOUNT_KEY
}


function getAmountValue {
    if [[ $AMOUNT_KEY -eq "1" ]]
    then
        AMOUNT_VALUE="5000"
    elif [[ $AMOUNT_KEY -eq "2" ]]
    then
        AMOUNT_VALUE="10000"
    elif [[ $AMOUNT_KEY -eq "3" ]]
    then
        AMOUNT_VALUE="15000"
    elif [[ $AMOUNT_KEY -eq "4" ]]
    then
        AMOUNT_VALUE="20000"
    else
        AMOUNT_VALUE=""
        while [[ $AMOUNT_VALUE -eq "" ]]
        do
            getCustomWithdrawalAmount
        done
    fi
}


function getCustomWithdrawalAmount {
    displayDashedLine
    echo "Please enter the amount you wish to withdraw"
    echo "Amount should not include space characters, commas, periods, and other non-numeric characters."
    echo "Amount should be from 500 and upwards, but not more than 50000."
    displayDashedLine

    read AMOUNT_VALUE

    checkCustomWithdrawalAmount
}


function checkCustomWithdrawalAmount {
    if [[ $AMOUNT_VALUE -lt "500" ]]
    then
        echo ""
        echo ""
        echo "ERROR: The amount you entered was lower than 500!"
        getCustomWithdrawalAmount
    elif [[ $AMOUNT_VALUE -gt "50000" ]]
    then
        echo ""
        echo ""
        echo "ERROR: The amount you entered was greater than 50000!"
        getCustomWithdrawalAmount
    else
        continue
    fi
}


function payWithdrawalAmount {
    echo ""
    echo "Please take your cash -- $AMOUNT_VALUE"
}

function askToPerformAnotherTransaction {
    echo ""
    displayDashedLine
    echo "Do you want to perform another transaction?"
    displayDashedLine
    echo "Select 1 to perform another transaction"
    echo "Select 0 (or any other key) to end this session"
    displayDashedLine

    read PERFORM_ANOTHER_TRANSACTION
}


while [[ $PERFORM_ANOTHER_TRANSACTION -eq "1" ]]
do
    getPin
    performGenericTransaction
    askToPerformAnotherTransaction
done

echo ""
echo "Thank you for making use of our sevice today"
echo "Goodbye, and we hope to see you later!"
