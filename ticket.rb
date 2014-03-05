#ticket = Object.new
#def ticket.venue
#  "Town Hall"
#end
#
#def ticket.performer
#  "Mark Twain"
#end
#
#def ticket.event
#  "Author's reading"
#end
#
#def ticket.price
#  5.50
#end
#
#def ticket.seat
#  "Second Balcony, row J , seat 12"
#end
#
#def ticket.date
#  "01/01/03"
#end
#
#def ticket.availability_status
#  "sold"
#end
#
#def ticket.available?
#  false
#end
#
#if ticket.available?
#  puts "You're in luck!"
#else
#  puts "Sorry--that seat has been sold."
#end
#print "This ticket is for: #{ticket.event}, at #{ticket.venue}. "
##print ticket.event + ", at "
##print ticket.venue + ", on "
#puts ticket.date + "."
#print "The performer is "
#puts ticket.performer + "."
#print "The seat is "
#print ticket.seat + ", "
#print "And it costs $"
#puts "%.2f" % ticket.price
##########################################
#class Ticket
#  def initialize(venue, date)
#    @venue = venue
#    @date = date
#  end
#
#  def set_price(amount)
#    @price = amount
#  end
#
#  def price
#    @price
#  end
#end
#
#ticket = Ticket.new("Town Hall", "11/12/13")
#ticket.set_price(65.000)
#puts "The ticket costs $#{"%.2f" % ticket.price}."
#ticket.set_price(72.50)
#puts "Whoops -- it just went up. It now costs $#{"%.2f" % ticket.price}."

class Ticket
  def price=(amount)
    if (amount * 100).to_i == amount * 100
      @price = amount
    else
      puts "The price seems to be malformed"
    end
  end

  def price
    @price
  end
end