require_relative '../../app/bank'

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

        context 'when the value is zero' do
            before(:all) do
                @account = CheckingAccount.new(0.00)

                @account.withdraw(100.00)
            end

            it 'should show error message' do
                expect(@account.message).to eql "Insufficient balance for withdraw :/"
            end

            it 'should maintain the balance' do
                expect(@account.balance).to eql 0.0
            end
        end

        context 'when the value is insufficient' do
            before(:all) do
                @account = CheckingAccount.new(100.00)

                @account.withdraw(101.00)
            end

            it 'should show error message' do
                expect(@account.message).to eql "Insufficient balance for withdraw :/"
            end

            it 'should maintain the balance' do
                expect(@account.balance).to eql 100.0
            end
        end

        context 'when the withdraw value is greather than transaction limit' do
            before(:all) do
                @account = CheckingAccount.new(1000.00)

                @account.withdraw(701.00)
            end

            it 'should show error message' do
                expect(@account.message).to eql "Maximum service limit is R$ 700"
            end

            it 'should maintain the balance' do
                expect(@account.balance).to eql 1000.0
            end
        end
    end
end