class SortOptionsHolder
  attr_reader :cuisine_option, :sort_option, :views_option

  def with_cuisine(cuisine)
    @cuisine_option = cuisine
    self
  end

  def with_sort_option(sort_option)
    @sort_option = sort_option
    self
  end

  def with_views_option(views_option)
    @views_option = views_option
    self
  end
end