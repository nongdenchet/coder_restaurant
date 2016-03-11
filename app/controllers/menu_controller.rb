class MenuController < ApplicationController
  def index
    service = MenuService.new(params[:option])
    @sections = service.sections
    @foods = service.foods_in_section
    @display_food = service.default_food
    @sort_options = SortOption.all
  end

  def display
    @display_food = Food.find(params[:id]).decorate
    respond_to :js
  end

  def sort
    service = MenuService.new(params[:option])
    @sections = service.sections
    @foods = service.foods_in_section
    respond_to :js
  end
end