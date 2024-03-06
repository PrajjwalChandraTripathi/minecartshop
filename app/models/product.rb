class Product < ApplicationRecord
  belongs_to :category
  has_many :stocks
  has_many :cart_items
 has_many :ratings
  def self.ransackable_associations(auth_object = nil)
    ["category", "stocks"]
  end


  def self.ransackable_attributes(auth_object = nil)
    ["category_id", "created_at", "id", "id_value", "name", "price", "updated_at"]
  end

end
