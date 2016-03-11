class MenuService
  DEFAULT_SECTION = 0
  attr_reader :sections, :foods

  def initialize(sort_option)
    @sections = all_section
    @foods = foods_in_section
    @sort_option = sort_option || 'name'
  end

  def all_section
    Food.select(:section).map(&:section).uniq
  end

  def foods_in_section
    all_food = FoodSortService.new.sort_by(@sort_option)
    sections.reduce({}) do |result, section|
      result.merge({section => food_by_section(all_food, section)})
    end
  end

  def default_food
    foods[sections[DEFAULT_SECTION]].first
  end

  private
  def food_by_section(all_food, section)
    FoodDecorator.decorate_collection(all_food.select { |i| i.section == section })
  end
end