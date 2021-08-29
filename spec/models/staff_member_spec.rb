require "rails_helper"

RSpec.describe StaffMember, type: :model do
  describe "#password=" do
    example "文字列を与えると、hash_passwordは長さ60の文字列になる" do
      member = StaffMember.new
      member.password = "crms"
      expect(member.hashed_password).to be_kind_of(String)
      expect(member.hashed_password.size).to eq(60)
    end

    example "nilを与えると、hashed_passwordはnilになる" do
      member = StaffMember.new(hashed_password: "X")
      member.password = nil
      expect(member.hashed_password).to be_nil
    end
  end
end