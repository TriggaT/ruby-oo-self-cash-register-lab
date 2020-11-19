
class CashRegister

    attr_accessor :total
    attr_reader :discount, :items

    def initialize(discount = 20)
        @total = 0
        @discount = discount
        @items = []
    end

    # def total
    #     @total *= discount/100
    # end
    
    def add_item(item, item_price, quan = 1)
        @first_total = @total
        self.total += item_price * quan 
        quan.times do 
            @items << item
        end 
     end

    def apply_discount
        @total -= @total * discount/100
        if @total == 0 
            "There is no discount to apply."
        else 
        "After the discount, the total comes to $#{@total}." 
        end

    end



    
    def void_last_transaction
        @total = @first_total

    end



end