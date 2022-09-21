require 'rails_helper'

RSpec.describe Book, type: :model do
  describe "Book#title_with_author" do
    context "Book#titleが文字列のとき" do # 状況を説明する
      it "titleとauthorを結んだ文字列が返ること" do
        book = Book.new(title: "RubyBook", author: "matz")
        expect(book.title_with_author).to eq("RubyBook - matz")
      end
    end
    context "Book#titleがnilのとき" do # 状況を説明する
      it "空のtitleとauthorを結んだ文字列が返ること" do
        book = Book.new(author: "matz")
        expect(book.title_with_author).to eq(" - matz")
      end
    end
  end
end
