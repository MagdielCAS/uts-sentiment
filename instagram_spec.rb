require_relative 'instagram'

describe Instagram, "#sentiment?" do

    context "when .perform_requisition has positive mood" do
        it "perform the request" do
            post = Instagram.new
            post.perform_requisition("positive")

            expect(post.sentiment?).to eq "POSITIVE"
        end
    end

    context "when .perform_requisition has neutral mood" do
        it "perform the request" do
            post = Instagram.new
            post.perform_requisition("neutral")

            expect(post.sentiment?).to eq "NEUTRAL"
        end
    end

    context "when .perform_requisition has negative mood" do
        it "perform the request" do
            post = Instagram.new
            post.perform_requisition("negative")

            expect(post.sentiment?).to eq "NEGATIVE"
        end
    end

end