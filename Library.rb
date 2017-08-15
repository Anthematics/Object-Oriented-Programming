

class Book

	@@onshelf = []
	@@onloan = []
 #classvariables^###################################
# This instance method makes a new book object. It should initialize a book's title, author, and isbn.
		def initialize(title,author,isbn)
			@title = []
			@author = []
			@isbn = []
		end

# Lentout? This instance method return true if a book has already been borrowed and false otherwise.
		def lentout?
			@@onloan
		end
# BROWSE ^This class method should return a random book from @@on_shelf (you may need to consult the Array docs to figure out how to do this).
		def self.browse
			@@onshelf.shuffle
		end

# AVAILABLE This class method should return the value of @@onshelf
		def self.available
			@@onshelf
		end
# BORROWED This class method should return the value of @@on_loan.
		def self.borrowed
			@@onloan
		end

# BORROW This instance method is how a book is taken out of the library.
# This method should use lent_out? to check if the book is already on loan, a
# nd if it is this method should return false to indicate that the attempt to
# borrow the book failed. Otherwise, use current_due_date to set the due_date of the book and move it from the collection of available books to the collection of books on loan,
# then return true.


#reader and writer methods for due date==================
		def checkduedate
		end

		def changeduedate
		end
#instance methods ^==========================================
		def self.createbook
				createdbook = Book.new
				@@onshelf << createdbook
				createdbook
		end
current_due_date

# This class method should return the due date for books taken out today. It's up to you to decide how far in the future the due date should be.
# You can refer to the section about Time above for help getting started, and don't hesitate to ask for help if you're stuck!

		def self.current_due_date

		end

		def self.overdue_books
			if
		end

		def self.browse
		end
# return_to_library
#
# This instance method is how a book gets returned to the library. It should call lent_out? to verify that the book was actually on loan. If it wasn't on loan in the first place, return false. Otherwise, move the book from the collection of books on loan to the collection of books on the library shelves, and set the book's due date to nil before returning true.
		def return_to_library(book)
			@@onshelf<<  book
		end






#class methods ^ ====================================================


jason=Book.createbook
puts jason.inspect


end

# In this assignment you'll be making use of Ruby's Time object in order to manage the due dates of the books. Before getting started on the book program, open an irb session and the Time docs and spend a few minutes familiarizing yourself with this part of Ruby. Try calling Time.now to see what it returns. What happens if you run Time.now + 60 or Time.now - 360?
#


# initialize This instance method makes a new book object. It should initialize a book's title, author, and isbn.
#
# create
## Your task
#


# This class method is how new books are added to the library. This method should call Book.new(...),add the new book object to @@on_shelf, and then return the new book.
#
# available
#
# This class method should return the value of @@on_shelf.
#
# borrowed
#
# This class method should return the value of @@on_loan.
#
# browse
#
# This class method should return a random book from @@on_shelf (you may need to consult the Array docs to figure out how to do this).
#

#
# current_due_date
#
# This class method should return the due date for books taken out today. It's up to you to decide how far in the future the due date should be. You can refer to the section about Time above for help getting started, and don't hesitate to ask for help if you're stuck!
#
# borrow
#
# This instance method is how a book is taken out of the library. This method should use lent_out? to check if the book is already on loan, and if it is this method should return false to indicate that the attempt to borrow the book failed. Otherwise, use current_due_date to set the due_date of the book and move it from the collection of available books to the collection of books on loan, then return true.
# return_to_library
#
# This instance method is how a book gets returned to the library. It should call lent_out? to verify that the book was actually on loan. If it wasn't on loan in the first place, return false. Otherwise, move the book from the collection of books on loan to the collection of books on the library shelves, and set the book's due date to nil before returning true.
#
# overdue
#
# This class method should return a list of books whose due dates are in the past (ie. less than Time.now).
#
# As you write your program you should be thinking about the reasoning behind making each method either an instance method or a class method.
#
