require 'bank_account'
require 'transaction'

RSpec.describe BankAccount do 
    it 'debit transaction is added to transactions array' do 
        account = BankAccount.new
        account.withdraw("12/01/21", 1000)
        expect(account.transactions.length).to eq(1)
    end

    it 'credit transaction is added to transactions array' do 
        account = BankAccount.new
        account.deposit("12/01/21", 1000)
        expect(account.transactions.length).to eq(1)
    end

    # it 'calculates overall balance' do 
    #     account = BankAccount.new
    #     account.deposit(3000)
    #     account.withdraw(1000)
    #     expect(account.balance).to eq(2000)
    # end

    it 'returns a list of all transactions' do
        account = BankAccount.new
        account.deposit("12/01/21", 1000)
        account.withdraw("12/01/21", 1000)
        expect(account.transactions.length).to eq(2)
    end

    it 'updates balance when a deposit is added to transactions array' do
        account = BankAccount.new
        account.deposit("12/01/21", 1000)
        expect(account.transactions_including_balance).to eq([{:date=>"12/01/21", :credit=>1000, :debit=>0, :balance=>1000}])
    end

    it 'updates balance when a deposit is added to transactions array' do
        account = BankAccount.new
        account.deposit("12/01/21", 1000)
        account.withdraw("12/01/22", 500)
        expect(account.transactions_including_balance).to eq([{:date=>"12/01/21", :credit=>1000, :debit=>0, :balance=>1000}, {:date=>"12/01/22", :credit=>0, :debit=>500, :balance=>500}])
    end

end