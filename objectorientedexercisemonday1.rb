# Create a BankAccount class
# Every bank account should have balance and interest_rate attributes
# At this point you should test out creating an instance of your class
# to make sure it works
# Your class should have an instance method called deposit that accepts
# one amount argument and adds that amount to the total balance
# Test out your method by calling it on an instance of your class
 # There should be a withdraw instance method that accepts one amount
 # argument and subtracts it from the total balance
# Don't forget to test it out!
# Finally, there should be a gain_interest instance method that
# increases the total balance according to the interest rate.
# Once all of that is working, don't forget to commit!

#inital class is Bankaccount - initalize knows that that means it must be turned on
#this is specified with @ symbols for the various things one needs.
#.new allows us to add new classes (ie functions) to the program with different formula

class Bankaccount
	def initialize
		 @balance=0
		 @interest_rate=1.15
	end

	def deposit(amount)
		 @balance +=  amount
	end

	def withdraw(amount)
		 @balance -= amount
	end

	def gain_interest(amount)
		amount=@balance *= @interest_rate
	ends
end

Jasonsaccount = Bankaccount.new
puts Jasonsaccount.inspect

Jasonsaccount.deposit 100
puts Jasonsaccount.inspect

Jasonsaccount.withdraw 50
puts Jasonsaccount.inspect

Jasonsaccount.gain_interest
puts Jasonsaccount.inspect
