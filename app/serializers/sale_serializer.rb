class SaleSerializer < ActiveModel::Serializer
  attributes :id, :product, :price, :quantity, :seller, :created_at
end
