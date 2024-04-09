FactoryBot.define do
  factory :variation do
    kind { "PDF" } # "PDF" に変更
    trait :with_book do
      book { association :book }
    end
  end
end
