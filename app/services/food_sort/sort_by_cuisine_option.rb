module FoodSort
  class SortByCuisineOption < SortByBase
    def sort(value)
      @foods.where(cuisine: value) unless value.empty?
    end
  end
end