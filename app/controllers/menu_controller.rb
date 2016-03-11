class MenuController < ApplicationController
  def index
    service = MenuService.new
    @sections = service.sections
    @foods = service.foods_in_section
    @display_food = service.default_food
  end

  def display
    @display_food = Food.find(params[:id]).decorate
    respond_to :js
  end
end