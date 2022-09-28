FactoryBot.define do
  factory :variation do
    kind { "PDF" } # "PDF" に変更
    book { nil } # デフォルトのまま ※1
  end
end
