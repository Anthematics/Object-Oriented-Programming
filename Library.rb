
require pry
#binding.pry will force pry to pause on lines.
class Book

		@@onshelf = []
		@@onloan = []
 #classvariables^###################################
# This instance method makes a new book object. It should initialize a book's title, author, and isbn.
				def initialize(a, b, c)
						@title = a
						@author = b
						@isbn = c
				end

# Lentout? This instance method return true if a book has already been borrowed and false otherwise.
				def lentout
				@@onloan.include?(self)
				end

# BROWSE ^This class method should return a random book from @@on_shelf (you may need to consult the Array docs to figure out how to do this).
				def self.browse
						@@onshelf.samples
				end

# AVAILABLE This class method should return the value of @@onshelf
				def self.available
						@@onshelf
				end
# BORROWED This class method should return the value of @@on_loan.
				def self.borrowed
						@@onloan
				end

		def borrow
			if @@onloan.include?(self)
				return false
			else
				@due_date=current_due_date
				@@onloan<< self
				@@on_shelf.delete(self)
				return trueon
			end
		end
# BORROW This instance method is how a book is taken out of the library.
# This method should use lent_out? to check if the book is already on loan, and if it is this method should return false to indicate that the attempt to borrow the book failed. Otherwise, use current_due_date to set the due_date of the book and move it from the collection of available books to the collection of books on loan,
# then return true.


#reader and writer methods for due date==================
				def checkduedate
			@due_date
				end

				def changeduedate=(newdate)
			@due_date = newdate
				end
#instance methods ^==========================================
				def self.createbook(a,b,c)
								createdbook = Book.new(a,b,c)
								@@onshelf << createdbook
								createdbook
				end
# current_due_date

# This class method should return the due date for books taken out today. It's up to you to decide how far in the future the due date should be.
# You can refer to the section about Time above for help getting started, and don't hesitate to ask for help if you're stuck!

				def current_due_date
			time.now + (3*6*7*10*50*40)
				end

				def self.overdue_books #loopthroughbooks on loan ||
				end


# return_to_library
#
# This instance method is how a book gets returned to the library. It should call lent_out? to verify that the book was actually on loan. If it wasn't on loan in the first place, return false. Otherwise, move the book from the collection of books on loan to the collection of books on the library shelves, and set the book's due date to nil before returning true.
				def return_to_library(book)
						 @@onloan.include?=!(self)
		 else
			 @@onshelf << @@onloan
				end

		#This instance method is how a book gets returned to the library. It should call lent_out? to verify that the book was actually on loan. If it wasn't on loan in the first place, return false. Otherwise, move the book from the collection of books on loan to the collection of books on the library shelves, and set the book's due date to nil before returning true.
	 #


end


#class methods ^ ====================================================


jason=Book.createbook("harrypotter","jason","98292837")
puts jason.inspect
puts jason.lentout
puts jason.inspect





# In this assignment you'll be making use of Ruby's Time object in order to manage the due dates of the books. Before getting started on the book program, open an irb session and the Time docs and spend a few minutes familiarizing yourself with this part of Ruby. Try calling Time.now to see what it returns. What happens if you run Time.now + 60 or Time.now - 360?
#
#
 return_to_library

#
#

#
#
#
#
# borrow
#
# This instance method is how a book is taken out of the library. This method should use lent_out? to check if the book is already on loan, and if it is this method should return false to indicate that the attempt to borrow the book failed. Otherwise, use current_due_date to set the due_date of the book and move it from the collection of available books to the collection of books on loan, then return true.
#
#
#
# overdue
#
# This class method should return a list of books whose due dates are in the past (ie. less than Time.now).
#
# As you write your program you should be thinking about the reasoning behind making each method either an instance method or a class method.
#
