class Account
    attr_accessor :balance
    attr_accessor :message
    attr_accessor :limitForDay

    def initialize(balance)
        self.balance = balance
        self.limitForDay = 700
    end

    def withdraw(amount, maxLimit)
        if (amount > self.balance) 
            self.message = "Insufficient balance for withdraw :/"
        elsif (amount > self.limitForDay)
            self.message = "Maximum service limit is R$ " + maxLimit.to_s
        else
            self.balance -= amount
        end
    end
end

class CheckingAccount < Account
    def withdraw(amount, maxLimit = 700)
        super
    end
end

class SavingsAccount < Account
    def withdraw(amount, maxLimit = 500)
        super
    end
end