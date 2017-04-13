class SummarySerializer < ActiveModel::Serializer
  attributes :id, :sales, :services, :cash, :unpaid_bills, :bills_paid, :employees
end
