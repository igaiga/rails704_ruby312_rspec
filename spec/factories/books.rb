FactoryBot.define do
  factory :book do # :book はモデル名を全小文字にしてシンボルにしたもの
    title { "RubyBook" } # カラム title のデータとして "RubyBook" をつかう
    author { "matz" } # カラム author のデータとして "matz" をつかう

    trait :with_variations do
      after(:create) do |book|
        create_list(:variation, 2, book: book)
      end
    end
  end
end
