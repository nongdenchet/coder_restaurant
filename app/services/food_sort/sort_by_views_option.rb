module FoodSort
  class SortByViewsOption < SortByBase
    def sort(value)
      case value
        when 'view_low'
          @foods.order('views_count asc')
        when 'view_high'
          @foods.order('views_count desc')
        else
          @foods
      end
    end
  end
end