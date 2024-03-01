class Sale < ApplicationRecord

    def self.ransackable_attributes(auth_object = nil)
        ["amount", "created_at", "id", "id_value", "updated_at"]
      end
end
