class FoodSortService
  def sort_by(value)
    case value
      when 'low_price'
        Food.order('price asc')
      when 'high_price'
        Food.order('price desc')
      else
        Food.order(:name)
    end
  end
end