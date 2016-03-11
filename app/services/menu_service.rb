class MenuService
  attr_reader :sections, :foods

  def initialize
    @sections = all_section
    @foods = foods_in_section
  end

  def all_section
    Food.select(:section).map(&:section).uniq
  end

  def foods_in_section
    all_food = Food.all
    sections.reduce({}) do |result, section|
      result.merge(
          {section => FoodDecorator.decorate_collection(all_food.select { |i| i.section == section })}
      )
    end
  end

  def default_food
    foods[sections[0]][0]
  end
end