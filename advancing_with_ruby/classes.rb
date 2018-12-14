class Account
  attr_accessor :balance

  def deposit(value)
    self.balance += value
    puts "Depoisiting the amount of R$ #{value}"
  end
end

account = Account.new

account.balance = 0.0
account.deposit(50)
