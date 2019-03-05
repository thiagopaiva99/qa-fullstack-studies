class CheckingAccount
    attr_accessor :balance

    def initialize(balance)
        self.balance = balance
    end

    def withdraw(amount)
        self.balance -= amount
    end
end

describe CheckingAccount do
    describe 'Withdraw' do
        context 'when the value is positive' do
            before(:all) do
                @account = CheckingAccount.new(1000.00)

                @account.withdraw(200.00)
            end

            it 'should update balance' do
                expect(@account.balance).to eql 800.0
            end
        end

        context 'when the value is insufficient' do
            before(:all) do
                @account = CheckingAccount.new(0000.00)

                @account.withdraw(100.00)
            end

            it 'should show error message' do
                expect(@account.message).to eql "Insufficient balance for withdraw :/"
            end
        end
    end
end