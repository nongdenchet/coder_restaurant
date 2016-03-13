class ShowFoodService
  attr_reader :food, :related_foods, :reviews

  def initialize(params)
    @params = params
    prepare_food
    prepare_reviews
    prepare_related_foods
  end

  private
  def prepare_food
    @food = Food.find(@params[:id]).decorate
    @food.increase_views_count if @params[:show]
  end

  def prepare_related_foods
    @related_foods = FoodDecorator.decorate_collection(
        Food.where(cuisine: @food.cuisine).take(2)
    )
  end

  def prepare_reviews
    @reviews = @food.reviews.order("id asc")
  end
end