class ShowOrderService
  attr_reader :foods, :total, :title

  def initialize(current_orders)
    @current_orders = current_orders
    prepare_data
  end

  private
  def prepare_data
    prepare_foods
    prepare_total
    prepare_title
  end

  def prepare_title
    @title = @total > 0 ? 'Create order' : 'You have no orders'
  end

  def prepare_foods
    @foods = FoodDecorator.decorate_collection(Food.find(id_quantity_hash.keys))
    @foods.each { |food|
      food.set_quantity(id_quantity_hash["#{food.id}"])
    }
  end

  def prepare_total
    @total = @foods.reduce(0) { |result, food|
      result + food.total_amount
    }
  end

  def id_quantity_hash
    @current_orders.inject(Hash.new(0)) { |result, id|
      result[id] += 1
      result
    }
  end
end