
class BankAccount  #creating a class does not need an = sign
	@@interest_rate = 1.05 #if these factors were under initalize they would be apart of every created account
	@@accounts = []
	@@total_funds =0 #it is above initalize because someone who owns the bank account is not allowed to check ALL deposits and ALL withdrawls

	def initialize #.new creates an instance as long as it is defined as a method
		 @balance=0
	end

	def deposit(amount) #the brackets give the method the ability to accept an arguement as defined by whats in the brackets but should be related to the concept of the method.
		@balance += amount
		@@total_funds += amount
	end

	def withdraw(amount)
		@balance -= amount
		@@total_funds -= amount
	end

	def checkbalance
		@balance #no = sign needed - this will literally check balance as is , but method must be defined to be acted on.
	end

	def self.createbankaccount # creates a class method so we can call it by a class name (i.e Bankaccount.createbankaccount)
		create=BankAccount.new #serves the actual function of creating the account.
		@@accounts << create #we must shovel the created bank account into the @@accounts array so we can see total_funds and total_accounts (sort of an admin panel)
		create
	end

	def self.interest_time
		@@accounts.each do |account| #for everyaccount we gain interest -so we must check every account by creating a loop and applying interest.
			interest= account.checkbalance * @@interest_rate ##here we are checking the balance and * by interest rate and putting it into a interest variable which is saved so it is deposited on the next line.)#
			account.deposit(interest) #we have already defined the deposit method , so we are calling the account variable and depositing the bracketed interest.
		end
	end

	def self.total_funds #self.total_funds allows me to return all balances throughout the class which i would not be able to do without equating it to a method.
		@@total_funds
	end
end

jason=BankAccount.createbankaccount #we put BankAccount.createbankaccount because the computer would not know what to do with the class otherwise (i.e by appending the method to the class it knows the action it must take)
puts jason.inspect
jason.deposit(1000) # (amount) in deposit or withdraw methods. ) (.deposit calls deposit method so it knows what to do with it) 
puts jason.inspect

# misc notes > for every if , do , def & class there must be an end. type its end right away and avoid insane amounts of errors.
