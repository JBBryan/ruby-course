require 'time' # you're gonna need it

class Bar
attr_reader :name, :menu_items, :happy_discount
attr_accessor
  def initialize(name)
    @name=name
    @menu_items=[]
    @happy_discount=0
  end

  def add_menu_item(drink, cost)
    @menu_items << MenuItem.new(drink, cost)
  end

  def happy_discount
    if happy_hour?
      @happy_discount
    else
      0
    end
  end

  def happy_discount=(discount)
    if discount > 1
      @happy_discount = 1
    elsif discount < 0
      @happy_discount = 0
    else
      @happy_discount = discount
    end
  end


  def happy_hour?

    if Time.now.hour == 15
      true
    else
      false
    end
  end


end

class MenuItem
  attr_reader :name, :price
  def initialize(name, price)
    @name=name
    @price=price
  end
end
