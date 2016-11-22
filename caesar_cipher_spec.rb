require './caesar_cipher'

describe "caesar_cipher" do
  describe "#caesar_cipher" do
    context "given 'abc', 1" do
      it "returns bcd" do
        expect(caesar_cipher("abc", 1)).to eql("bcd")
      end
    end
  end
end
