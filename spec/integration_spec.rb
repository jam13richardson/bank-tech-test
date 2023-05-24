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

    it 'returns the correct credit amount' do
        account = BankAccount.new
        account.deposit("12/01/21", 400)
        result = account.transactions_including_balance
        expect(result[0][:credit]).to eq (400)
      end

    # it 'updates balance when a deposit is added to transactions array' do
    #     account = BankAccount.new
    #     account.deposit("12/01/21", 1000)
    #     account.withdraw("12/01/22", 500)
    #     expect(account.transactions_including_balance).to eq([{:date=>"12/01/21", :credit=>1000, :debit=>0, :balance=>1000}, 
    #     {:date=>"12/01/22", :credit=>0, :debit=>500, :balance=>500}])
    # end

    it 'produces an account statement based on all transactions' do
        account = BankAccount.new
        account.deposit("10/01/2023", 1000)
        account.deposit("13/01/2023", 2000)
        account.withdraw("14/01/2023", 500)
        expected_account_statement = "date  ||  credit  ||  debit  ||  balance\n" +
        "2023-01-10  ||  1000  ||  0  ||  1000 \n" +                   
        "2023-01-13  ||  2000  ||  0  ||  3000 \n" +                   
        "2023-01-14  ||  0  ||  500  ||  2500 \n" 
        expect { account.account_statement }.to output(expected_account_statement).to_stdout
    end
end