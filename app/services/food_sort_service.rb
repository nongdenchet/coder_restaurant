class FoodSortService
  def initialize(options)
    @options = options
    @foods = Food.all
  end

  def sort
    @options.values.each do |option|
      factory = factory(option[:type])
      @foods = factory.sort(option[:value]) if factory
    end
    @foods
  end

  private
  def factory(type)
    case type
      when 'cuisine_option'
        FoodSort::SortByCuisineOption.new(@foods)
      when 'views_option'
        FoodSort::SortByViewsOption.new(@foods)
      when 'sort_option'
        FoodSort::SortBySortOption.new(@foods)
      else
        nil
    end
  end
end