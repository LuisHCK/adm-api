FactoryGirl.define do
  factory :invoice do
    client "MyString"
    products 1
    services 1
    total "9.99"
    credit false
    code 1
    seller "MyString"
    date_open "2017-04-14 21:37:40"
    date_charged "2017-04-14 21:37:40"
  end
end
