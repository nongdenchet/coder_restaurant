class WelcomeController < ApplicationController
  def index
    @foods = FoodDecorator.decorate_collection(
        Food.order(:name).page(1).per(20)
    )
  end

  def contact
  end
end
