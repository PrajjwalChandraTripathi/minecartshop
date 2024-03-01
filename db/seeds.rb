# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Create an admin user in the development environment
if Rails.env.development?
  AdminUser.find_or_create_by!(email: 'admin@example.com') do |user|
    user.password = 'password'
    user.password_confirmation = 'password'
  end
end

# Create sample categories and products
electronics_category = Category.find_or_create_by!(name: "Electronics")
laptop_product = Product.find_or_create_by!(name: "Laptop", price: 1000, category_id: electronics_category.id)

# Create sample sales associated with the products
5.times do
  Sale.create!(product_id: laptop_product.id, amount: 1000, quantity: 1, sale_date: Time.now)
end
