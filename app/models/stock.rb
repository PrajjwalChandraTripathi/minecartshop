class Stock < ApplicationRecord
  belongs_to :product

  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "id", "id_value", "product_id", "quantity", "updated_at"]
  end
end
