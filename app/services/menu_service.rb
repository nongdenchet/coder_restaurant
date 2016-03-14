class MenuService
  DEFAULT_SECTION = 0
  attr_reader :sections, :foods

  def initialize(food_sort_options=nil)
    @food_sort_options = food_sort_options
    @sections = all_section
    @foods = foods_in_section
  end

  def all_section
    Food.pluck(:section).uniq
  end

  def foods_in_section
    foods = get_foods
    sections.reduce({}) do |result, section|
      result.merge({section => food_by_section(foods, section)})
    end
  end

  def default_food
    foods[sections[DEFAULT_SECTION]].first
  end

  private
  def get_foods
    @food_sort_options ? FoodSortService.new(@food_sort_options).sort : Food.all
  end

  def food_by_section(foods, section)
    FoodDecorator.decorate_collection(foods.select { |i| i.section == section })
  end
end