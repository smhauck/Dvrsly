FactoryBot.define do
  factory :erg do
    name { FFaker::CheesyLingo.title }
    active { true }
    homepage { FFaker::Internet.http_url }
    description { FFaker::CheesyLingo.sentence }
  end
end
