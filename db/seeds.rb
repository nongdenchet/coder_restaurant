require 'ffaker'

# Sample data
sections = %w(Breakfast Lunch Dinner Drinks)
images = %w(
  https://i.ytimg.com/vi/u1w7zqbBiXM/maxresdefault.jpg
  http://www.bonappetit.com/wp-content/uploads/2013/08/grilled-ratatouille-salad-646.jpeg
  http://app.cookingmatters.org/sites/default/files/sos-img/Ratatouille.jpg
  http://www.seriouseats.com/recipes/assets_c/2013/09/20130922-266596-sunday-brunch-ratatouille-fried-eggs-thumb-625xauto-352893.jpg
)
4.times do
  sections.each do |section|
    images.each do |image|
      Food.create(
          name: FFaker::Name.name,
          description: FFaker::Lorem.paragraph(1),
          image_url: image,
          price: rand(50..101) * 1000,
          section: section
      )
    end
  end
end

# Main data