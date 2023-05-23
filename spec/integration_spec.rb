require 'bank_account'
require 'transaction'

RSpec.describe BankAccount do 
    it 'debit transaction is added to transactions array' do 
        account = BankAccount.new
        account.withdraw(1000)
        expect(account.transactions.length).to eq(1)
    end

    it 'credit transaction is added to transactions array' do 
        account = BankAccount.new
        account.deposit(1000)
        expect(account.transactions.length).to eq(1)
    end

    it 'calculates overall balance' do 
        account = BankAccount.new
        account.deposit(3000)
        account.withdraw(1000)
        expect(account.balance).to eq(2000)
    end

    it 'returns a list of all transactions' do
        account = BankAccount.new
        account.deposit(1000)
        account.withdraw(1000)
        expect(account.transactions.length).to eq(2)
    end
end