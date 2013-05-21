require "spec_helper"

describe OrderMaller do
  describe "order_request" do
    let(:mail) { OrderMaller.order_request }

    it "renders the headers" do
      mail.subject.should eq("Order request")
      mail.to.should eq(["to@example.org"])
      mail.from.should eq(["from@example.com"])
    end

    it "renders the body" do
      mail.body.encoded.should match("Hi")
    end
  end

end
