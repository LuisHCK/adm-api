class InvoiceSerializer < ActiveModel::Serializer
  attributes :id, :client, :products, :services, :total, :credit, :code, :seller, :date_open, :date_charged
end
