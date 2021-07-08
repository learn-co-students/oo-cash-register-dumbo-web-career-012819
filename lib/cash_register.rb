require "pry"


class CashRegister

    attr_accessor  :discount, :total

    def initialize(discount = 0)
      @total = 0
      @discount = discount
    end
    def add_item(title,price,opi=nil)
      self.total += price
      if opi != nil
        exit!
        total += (price * opi)
      end
    end

end
