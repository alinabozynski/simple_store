# require 'faker'

# 676.times do 
# 	Product.create(
# 		title: Faker::Commerce.product_name,
# 		price: Faker::Commerce.price,
# 		stock_quantity: Faker::Number.between(from: 0, to: 200)
# 	)
# end

require 'csv'

Product.destroy_all
Category.destroy_all
	
csv_file = Rails.root.join('db/products.csv')
csv_data = File.read(csv_file)

products = CSV.parse(csv_data, headers: true)

products.each do |product| 
	category = Category.find_or_create_by(name: product['category'])
	
	Product.create(
	category: category,
	title: product['name'],
	description: product['description'],
	price: product['price'],
	stock_quantity: product['stock quantity']
	)
end
