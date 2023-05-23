require "transaction"

RSpec.describe Transaction do
  it "constructs" do
    transaction = Transaction.new("22/05/2023", 500, 200)
    expect(transaction.date).to eq "22/05/2023"
    expect(transaction.credit).to eq 500
    expect(transaction.debit).to eq 200
  end
end