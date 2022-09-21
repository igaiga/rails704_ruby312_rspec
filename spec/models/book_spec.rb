require 'rails_helper'

RSpec.describe Book, type: :model do
  it "trueであるとき、trueになること" do
    expect(true).to eq(true)
  end

  it "Bookモデルをnewしたとき、nilではないこと" do
    expect(Book.new).not_to eq(nil)
  end
end
