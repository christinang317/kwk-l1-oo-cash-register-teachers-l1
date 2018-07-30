# Code your cash register here!

class AmazonTransaction

  attr_accessor :items, :discount, :total

  def initialize(d = 0)
    @total = 0
    @items = []
    @discount = d
  end

  def add_item(title, price, quantity = 1)
    self.total += price * quantity
    quantity.times do
      items << title
    end

  end

  def apply_discount
     if @discount != 0
      @total = (@total * ((100.0 - @discount)/100)).to_i
       "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end


end
