<<<<<<< HEAD
require "pry"
class CashRegister
  
  attr_accessor :total, :discount, :price, :items, :last_transaction
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end
  
  def add_item(title, price, quantity = 1)
    @last_transaction = price * quantity
    if quantity > 1
      i = 0
      while i < quantity
        @items << title
        i += 1
      end
    else
      @items << title
    end
    @total += price * quantity
    @price = @total
    @total
  end
  
  def apply_discount
    if @discount > 0
       @discount = @discount/100.to_f
       num = @total * @discount
      @total = @total - num
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end
  
  def items
    @items
  end
  
  def void_last_transaction
    @total -= @last_transaction
  end
  
end
=======
require "pry"
class CashRegister
  
  attr_accessor :total, :discount
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end
  
  def add_item(title, price)
    @items << title
    new_total = total + price
    new_total
  end
  
end
>>>>>>> 59bcb55d526517d7eda61c25968efa5bd35a6149
