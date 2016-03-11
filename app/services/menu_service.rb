class MenuService
  DEFAULT_SECTION = 0
  attr_reader :sections, :foods

  def initialize(sort_option=nil)
    @sections = all_section
    @foods = foods_in_section
    @sort_option = sort_option
  end

  def all_section
    Food.select(:section).map(&:section).uniq
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
    @sort_option ? FoodSortService.new(@sort_option).sort : Food.all
  end

  def food_by_section(all_food, section)
    FoodDecorator.decorate_collection(all_food.select { |i| i.section == section })
  end
end