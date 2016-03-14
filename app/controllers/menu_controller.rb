class MenuController < ApplicationController
  before_action :get_options, only: [:index]

  def index
    prepare_menu(MenuService.new)
  end

  def display
    @display_food = Food.find(params[:id]).decorate
    respond_to :js
  end

  def sort
    prepare_menu(MenuService.new(food_sort_options))
    respond_to :js
  end

  private
  def prepare_menu(service)
    @sections, @foods, @display_food = service.sections, service.foods_in_section, service.default_food
  end

  def food_sort_options
    FoodSortOptions.new
        .with_views_option(params[:views_option])
        .with_sort_option(params[:sort_option])
        .with_cuisine(params[:cuisine_option])
  end

  def get_options
    @sort_options = SortOption.all
    @cuisine = Food.pluck(:cuisine).uniq
  end
end