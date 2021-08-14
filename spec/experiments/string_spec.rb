require "spec_helper"

describe String do
  describe "#<<" do
    example "文字の追加" do
      s = "ABC"
      s << "D"
      expect(s.size).to eq(4)
    end

    example "nilの追加" do
      pending("調査中")
      s = "ABC"
      s << nilの追加
      expect(s.size).to eq(4)
    end

    xexample "nilの追加" do
      s = "ABC"
      s << nilの追加
      expect(s.size).to eq(4)
    end

    xexample "nilの追加" do
      s = "ABC"
      s << nilの追加
      expect(s.size).not_to eq(4)
    end

    #raise_errorマッチャー練習
    #example "nilは追加できない" do
    example "nilは追加できない" do. :exception do
      s = "ABC"
      expect　{ s << nil }.to raise_error(TypeError)
    end
  end
end
