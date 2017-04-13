class ServiceSerializer < ActiveModel::Serializer
  attributes :id, :name, :client, :price, :quantity, :seller
end
