class Account
  attr_accessor :balance
  attr_accessor :name

  def initialize(name)
    self.balance = 0.0
    self.name = name
  end

  def deposit(value)
    self.balance += value

    puts "Depoisiting the amount of R$ #{value} at #{self.name} account, the total balance is R$ #{self.balance}"
  end
end

account = Account.new('Thiago')

account.deposit(50)
account.deposit(20)
