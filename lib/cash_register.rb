class CashRegister
  attr_accessor :total, :discount
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end
  
  def add_item(title, price, quantity = 1)
    @items << title
    @total += price * quantity
  end
  
  def apply_discount
    if discount != 0
      @total -= total * discount
    end
  end
end
