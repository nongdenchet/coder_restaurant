class MenuController < ApplicationController
  before_action :get_options, only: [:index]

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

  def sort
    service = MenuService.new(sort_options_holder)
    @sections = service.sections
    @foods = service.foods_in_section
    respond_to :js
  end

  private
  def sort_options_holder
    SortOptionsHolder.new
        .with_views_option(params[:views_option])
        .with_sort_option(params[:sort_option])
        .with_cuisine(params[:cuisine_option])
  end

  def get_options
    @sort_options = SortOption.all
    @cuisine = Food.select(:cuisine).map(&:cuisine).uniq
  end
end