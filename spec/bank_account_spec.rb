require 'bank_account'

RSpec.describe BankAccount do
  it 'returns an empty transaction array' do
    my_account = BankAccount.new
    expect(my_account.transactions_including_balance).to eq([])
  end
end