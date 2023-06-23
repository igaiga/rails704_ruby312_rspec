FactoryBot.define do
  factory :book do # :book はモデル名を全小文字にしてシンボルにしたもの
    title { "RubyBook" } # カラム title のデータとして "RubyBook" をつかう
    author { "matz" } # カラム author のデータとして "matz" をつかう

    trait :with_variations do
      after(:create) do |book|
        book.variations.create!(kind: "paper book")
      end
    end
  end
end
