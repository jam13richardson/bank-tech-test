class BankAccount
    def initialize
        @transactions = []
      end

  def withdraw(amount) 
    new_transaction = Transaction.new("%d/%m/%Y", 0, amount)
    @transactions << new_transaction
  end

  def deposit(amount)
    new_transaction = Transaction.new("%d/%m/%Y", amount, 0)
    @transactions << new_transaction
  end

  def transactions
    return @transactions
  end

#   def balance
#     balance = 0
#      @transactions.each do |transaction|
#         if transaction.credit > 0 
#             balance += transaction.credit
#         else 
#             balance -= transaction.debit
#         end
#      end
#      return balance
#   end

  def transactions_including_balance

    balance = 0
    transactions_including_balance = []

    @transactions.each do |transaction| 
        if transaction.credit > 0
            balance += transaction.credit
            transactions_including_balance << {
            date: transaction.date,
            credit: transaction.credit,
            debit: transaction.debit,
            balance: balance }
        else
            balance -= transaction.debit 
            transactions_including_balance << {
            date: transaction.date,
            credit: transaction.credit,
            debit: transaction.debit,
            balance: balance }
        end
    end 
    return transactions_including_balance
  end
  
  def bank_statement 
    puts "date  ||  credit  ||  debit  || balance"

    transactions_including_balance.each do |transaction|
        date = transaction[:date]
        credit = transaction[:credit]
        debit = transaction[:debit]
        balance = transaction[:balance]

        puts "#{date} ||  #{credit}  || #{debit}  || #{balance} "
    end
  end
end

