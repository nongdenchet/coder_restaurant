module FoodSort
  class SortByCuisineOption < SortByBase
    def sort(value)
      value.empty? ? @foods : @foods.where(cuisine: value)
    end
  end
end