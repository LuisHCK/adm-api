class CashSerializer < ActiveModel::Serializer
  attributes :id, :total, :date_open, :date_close
end
