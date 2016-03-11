module FoodSort
  class SortBySortOption < SortByBase
    def sort(value)
      case value
        when 'low_price'
          @foods.order('price asc')
        when 'high_price'
          @foods.order('price desc')
        when 'name'
          @foods.order(:name)
        else
          @foods
      end
    end
  end
end