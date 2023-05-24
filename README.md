## Overview

A programme that allows a user to manage their personal finances.

## User Stories 

As a client, so I can keep track of my finances I want to be able to make deposits.

As a client, so I can keep track of my finances I want to be able to make withdrawals.

As a client, so I can keep track of my money I want to be able to print account statements showing date, amount and balance

### Requirements

* You should be able to interact with your code via a REPL like IRB or Node.  (You don't need to implement a command line interface that takes input from STDIN.)
* Deposits, withdrawal.
* Account statement (date, amount, balance) printing.
* Data can be kept in memory (it doesn't need to be stored to a database or anything).

### Acceptance criteria

**Given** a client makes a deposit of 1000 on 10-01-2023  
**And** a deposit of 2000 on 13-01-2023  
**And** a withdrawal of 500 on 14-01-2023  
**When** she prints her bank statement  
**Then** she would see

```
date || credit || debit || balance
14/01/2023 || || 500.00 || 2500.00
13/01/2023 || 2000.00 || || 3000.00
10/01/2023 || 1000.00 || || 1000.00
```

### Approach 

* I followed a TDD, OOP approach
* Two class system to ensure that the program was future proof, otherwise the test could've been run with a single class
* BankAccount manages deposit, withdraw, getting all transactions with balance, and account statements
* Transaction initialiszed date, credit and debit 
* All tests pass using RSpec (see testing.png)

### Running the code
1. Require the relevant files
require './bank_account.rb'
require './transaction.rb'

2. In this command, date is a string that is transformed into a date format and amount is an integer
account.deposit("10/01/2023", 1000)
account.deposit("13/01/2023", 2000)

4. Once again, date is a string that is transformed into a date format and amount is an integer
account.withdraw("14/01/2023", 500)

5. Account statement is printed 
account.account_statement

(see working-example.png for terminal entries)