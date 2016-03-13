class FoodSortOptions
  attr_reader :values

  def initialize
    @values = []
  end

  def with_cuisine(cuisine_option)
    @values << create('cuisine_option', cuisine_option)
    self
  end

  def with_sort_option(sort_option)
    @values << create('sort_option', sort_option)
    self
  end

  def with_views_option(views_option)
    @values << create('views_option', views_option)
    self
  end

  private
  def create(type, value)
    {type: type, value: value}
  end
end