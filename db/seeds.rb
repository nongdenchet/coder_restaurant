require 'ffaker'

sections = %w(Breakfast Lunch Dinner Drinks)
images = %w(
  https://i.ytimg.com/vi/u1w7zqbBiXM/maxresdefault.jpg
  http://www.bonappetit.com/wp-content/uploads/2013/08/grilled-ratatouille-salad-646.jpeg
  http://app.cookingmatters.org/sites/default/files/sos-img/Ratatouille.jpg
  http://www.seriouseats.com/recipes/assets_c/2013/09/20130922-266596-sunday-brunch-ratatouille-fried-eggs-thumb-625xauto-352893.jpg
  https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSaSi9cqP-Ri9rCsLQQtOTkcQ9RVhJ-B8E--nehLWcR7MYZMfrR
  https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcRy3SItnS5jMVbsDWQix5sbvh25mbdJ6QjW8l-eNOHSPP1QqOtP
  https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcTf4tLgsCSTKFW_M8okYxh7YbDzp1cbTBx6h5N7FpQe5JPfLY0saA
  https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcS4povIEXYYbENYsG-A-7mRQ5GYJlR6wmQwPHCThQHEjYrLh1caRg
  https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcTVC2146zTHrTSqmuRqvQjT18a58PoMIqdOUc8zI9Nf_4oJzDBU
)
cuisines = %w(Serbian Germany France)
sections.each do |section|
  16.times do
    Food.create(
        name: FFaker::Name.name,
        description: FFaker::Lorem.paragraph(1),
        image_url: images[rand(9)],
        price: rand(50..101) * 1000,
        section: section,
        cuisine: cuisines[rand(3)],
        views_count: rand(20)
    )
  end
end

# Sort option
SortOption.create(name: 'Name', value: 'name')
SortOption.create(name: 'High price', value: 'high_price')
SortOption.create(name: 'Low price', value: 'low_price')

# Review
Food.all.each do |food|
  7.times do
    food.reviews.create(
        username: FFaker::Name.name,
        comment: FFaker::Lorem.paragraph(1),
        star: rand(5) + 1,
    )
  end
end

# Coupon
Coupon.create(name: 'CODERSCHOOL', percent: 50)