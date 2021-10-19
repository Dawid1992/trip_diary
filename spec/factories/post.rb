FactoryBot.define do
    factory :post do
     city {"Warszawa"}
     note {"Great day"}
     temperature {10}
     association :user
    end
  end
  