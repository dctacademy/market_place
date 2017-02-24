1000.times do 
	product = Product.new
	product.name = Faker::Commerce.product_name
	product.price = Faker::Commerce.price 
	product.description = Faker::Lorem.paragraph
	product.category = Faker::Commerce.department(1)
	product.release_date = Faker::Date.between(Date.parse('2014-01-01'), Date.parse('2018-01-01'))
	product.is_available = [true,false].sample
	product.stock = product.is_available ? Faker::Number.between(1,1000) : 0
	product.save
end