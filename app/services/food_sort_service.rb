class FoodSortService
  def initialize(options_holder)
    @options_holder = options_holder
    @foods = Food.all
  end

  def sort
    @foods = FoodSort::SortByViewsOption.new(@foods).sort(@options_holder.views_option)
    @foods = FoodSort::SortBySortOption.new(@foods).sort(@options_holder.sort_option)
    @foods = FoodSort::SortByCuisineOption.new(@foods).sort(@options_holder.cuisine_option)
  end
end