class BankAccount
    def initialize
        @transactions = []
      end

  def withdraw(amount) 
  # amount is an amount of money being deposited
    # amount gets turned into instance of Transaction with date 
    # maybe Time.now.strftime("%d/%m/%Y %H:%M") #=> "14/09/2011 14:09" removing time when printing
    # is loaded into transactions array
    # Returns nothing
  end

  def deposit(amount)
    # amount gets turned into instance of Transaction with date
    # is loaded into transactions array
  end

  def gets_transactions_with_balance
    # transforms transaction object into hash with balance
  
  def print_statement # keyword is a string
    # Prints a list of transaction in descending date order
  end
end
end

account = transaction.new 